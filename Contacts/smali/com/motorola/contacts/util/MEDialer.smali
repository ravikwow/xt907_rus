.class public Lcom/motorola/contacts/util/MEDialer;
.super Ljava/lang/Object;
.source "MEDialer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;,
        Lcom/motorola/contacts/util/MEDialer$DialFrom;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static isQwertyKeypad:Z

.field public static isSmartDialer:Z

.field public static mLaunched:Z

.field public static mMELogger:Lcom/motorola/contacts/util/MELogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->DBG:Z

    sput-boolean v0, Lcom/motorola/contacts/util/MEDialer;->DBG:Z

    .line 40
    sput-boolean v1, Lcom/motorola/contacts/util/MEDialer;->isSmartDialer:Z

    .line 41
    sput-boolean v1, Lcom/motorola/contacts/util/MEDialer;->isQwertyKeypad:Z

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/contacts/util/MEDialer;->mMELogger:Lcom/motorola/contacts/util/MELogger;

    .line 45
    sput-boolean v1, Lcom/motorola/contacts/util/MEDialer;->mLaunched:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getQwertyKeypad()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/motorola/contacts/util/MEDialer;->isQwertyKeypad:Z

    return v0
.end method

.method public static getSmartDialer()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/motorola/contacts/util/MEDialer;->isSmartDialer:Z

    return v0
.end method

.method public static inited(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 71
    sget-boolean v1, Lcom/motorola/contacts/util/MEDialer;->mLaunched:Z

    if-nez v1, :cond_0

    .line 72
    sput-boolean v0, Lcom/motorola/contacts/util/MEDialer;->mLaunched:Z

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {p0}, Lcom/motorola/contacts/util/MELogger;->createSingleInstance(Landroid/content/Context;)Lcom/motorola/contacts/util/MELogger;

    move-result-object v1

    sput-object v1, Lcom/motorola/contacts/util/MEDialer;->mMELogger:Lcom/motorola/contacts/util/MELogger;

    .line 77
    :cond_0
    sget-object v1, Lcom/motorola/contacts/util/MEDialer;->mMELogger:Lcom/motorola/contacts/util/MELogger;

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string v0, "MEDialer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method public static onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dialFrom"    # Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .prologue
    const/4 v2, 0x0

    .line 83
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget-boolean v0, Lcom/motorola/contacts/util/MEDialer;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " <- onDialer -> dialer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/util/MEDialer;->log(Ljava/lang/String;)V

    .line 86
    :cond_0
    const-string v0, "dialer"

    invoke-virtual {p2}, Lcom/motorola/contacts/util/MEDialer$DialFrom;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    sput-boolean v2, Lcom/motorola/contacts/util/MEDialer;->isSmartDialer:Z

    .line 89
    sput-boolean v2, Lcom/motorola/contacts/util/MEDialer;->isQwertyKeypad:Z

    .line 91
    :cond_1
    return-void
.end method

.method public static onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "smartDialFrom"    # Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;

    .prologue
    const/4 v2, 0x0

    .line 96
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-boolean v0, Lcom/motorola/contacts/util/MEDialer;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " <- onDialer -> smartdialer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/util/MEDialer;->log(Ljava/lang/String;)V

    .line 98
    :cond_0
    const-string v0, "dialer"

    sget-object v1, Lcom/motorola/contacts/util/MEDialer$DialFrom;->DIALERKEY:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-virtual {v1}, Lcom/motorola/contacts/util/MEDialer$DialFrom;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v0, "smartdialer"

    invoke-virtual {p2}, Lcom/motorola/contacts/util/MEDialer$SmartDialFrom;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    sput-boolean v2, Lcom/motorola/contacts/util/MEDialer;->isSmartDialer:Z

    .line 102
    sput-boolean v2, Lcom/motorola/contacts/util/MEDialer;->isQwertyKeypad:Z

    .line 104
    :cond_1
    return-void
.end method

.method public static onVVM(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-static {p0}, Lcom/motorola/contacts/util/MEDialer;->inited(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    sget-boolean v1, Lcom/motorola/contacts/util/MEDialer;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, " <- onVVM -> "

    invoke-static {v1}, Lcom/motorola/contacts/util/MEDialer;->log(Ljava/lang/String;)V

    .line 141
    :cond_0
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_CALL_STATS_L1"

    const-string v2, "CALL_VVM_VIA_DIALER"

    const-string v3, "ver=0.1"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 144
    .local v0, "event":Lcom/motorola/android/provider/CheckinEvent;
    invoke-static {v0}, Lcom/motorola/contacts/util/MELogger;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    .line 147
    .end local v0    # "event":Lcom/motorola/android/provider/CheckinEvent;
    :cond_1
    return-void
.end method

.method public static setQwertyKeypad(Z)V
    .locals 0
    .param p0, "isUsed"    # Z

    .prologue
    .line 129
    sput-boolean p0, Lcom/motorola/contacts/util/MEDialer;->isQwertyKeypad:Z

    .line 130
    return-void
.end method

.method public static setSmartDialer(Z)V
    .locals 0
    .param p0, "isUsed"    # Z

    .prologue
    .line 121
    sput-boolean p0, Lcom/motorola/contacts/util/MEDialer;->isSmartDialer:Z

    .line 122
    return-void
.end method
