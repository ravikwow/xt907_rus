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

.field private static final VDBG:Z

.field public static isQwertyKeypad:Z

.field public static isSmartDialer:Z

.field public static mLaunched:Z

.field public static mMELogger:Lcom/motorola/contacts/util/MELogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    sput-boolean v0, Lcom/motorola/contacts/util/MEDialer;->DBG:Z

    .line 36
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VDBG:Z

    sput-boolean v0, Lcom/motorola/contacts/util/MEDialer;->VDBG:Z

    .line 42
    sput-boolean v1, Lcom/motorola/contacts/util/MEDialer;->isSmartDialer:Z

    .line 43
    sput-boolean v1, Lcom/motorola/contacts/util/MEDialer;->isQwertyKeypad:Z

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/contacts/util/MEDialer;->mMELogger:Lcom/motorola/contacts/util/MELogger;

    .line 47
    sput-boolean v1, Lcom/motorola/contacts/util/MEDialer;->mLaunched:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static getQwertyKeypad()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/motorola/contacts/util/MEDialer;->isQwertyKeypad:Z

    return v0
.end method

.method public static getSmartDialer()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/motorola/contacts/util/MEDialer;->isSmartDialer:Z

    return v0
.end method

.method public static inited(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 73
    sget-boolean v1, Lcom/motorola/contacts/util/MEDialer;->mLaunched:Z

    if-nez v1, :cond_0

    .line 74
    sput-boolean v0, Lcom/motorola/contacts/util/MEDialer;->mLaunched:Z

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-static {p0}, Lcom/motorola/contacts/util/MELogger;->createSingleInstance(Landroid/content/Context;)Lcom/motorola/contacts/util/MELogger;

    move-result-object v1

    sput-object v1, Lcom/motorola/contacts/util/MEDialer;->mMELogger:Lcom/motorola/contacts/util/MELogger;

    .line 79
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
    .line 163
    const-string v0, "MEDialer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public static onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dialFrom"    # Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-static {p0}, Lcom/motorola/contacts/util/MEDialer;->inited(Landroid/content/Context;)Z

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

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

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

    .line 95
    invoke-static {p0}, Lcom/motorola/contacts/util/MEDialer;->inited(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
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

    .line 97
    :cond_0
    const-string v0, "dialer"

    sget-object v1, Lcom/motorola/contacts/util/MEDialer$DialFrom;->DIALERKEY:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v0, "smartdialer"

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    sput-boolean v2, Lcom/motorola/contacts/util/MEDialer;->isSmartDialer:Z

    .line 101
    sput-boolean v2, Lcom/motorola/contacts/util/MEDialer;->isQwertyKeypad:Z

    .line 103
    :cond_1
    return-void
.end method

.method public static onVM(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-static {p0}, Lcom/motorola/contacts/util/MEDialer;->inited(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    sget-boolean v1, Lcom/motorola/contacts/util/MEDialer;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, " <- onVM -> "

    invoke-static {v1}, Lcom/motorola/contacts/util/MEDialer;->log(Ljava/lang/String;)V

    .line 153
    :cond_0
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_CALL_STATS_L1"

    const-string v2, "CALL_VM_VIA_DIALER"

    const-string v3, "ver=0.1"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 156
    .local v0, "event":Lcom/motorola/android/provider/CheckinEvent;
    invoke-static {v0}, Lcom/motorola/contacts/util/MELogger;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    .line 159
    .end local v0    # "event":Lcom/motorola/android/provider/CheckinEvent;
    :cond_1
    return-void
.end method

.method public static onVVM(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-static {p0}, Lcom/motorola/contacts/util/MEDialer;->inited(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    sget-boolean v1, Lcom/motorola/contacts/util/MEDialer;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, " <- onVVM -> "

    invoke-static {v1}, Lcom/motorola/contacts/util/MEDialer;->log(Ljava/lang/String;)V

    .line 140
    :cond_0
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_CALL_STATS_L1"

    const-string v2, "CALL_VVM_VIA_DIALER"

    const-string v3, "ver=0.1"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 143
    .local v0, "event":Lcom/motorola/android/provider/CheckinEvent;
    invoke-static {v0}, Lcom/motorola/contacts/util/MELogger;->logEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    .line 146
    .end local v0    # "event":Lcom/motorola/android/provider/CheckinEvent;
    :cond_1
    return-void
.end method

.method public static setQwertyKeypad(Z)V
    .locals 0
    .param p0, "isUsed"    # Z

    .prologue
    .line 128
    sput-boolean p0, Lcom/motorola/contacts/util/MEDialer;->isQwertyKeypad:Z

    .line 129
    return-void
.end method

.method public static setSmartDialer(Z)V
    .locals 0
    .param p0, "isUsed"    # Z

    .prologue
    .line 120
    sput-boolean p0, Lcom/motorola/contacts/util/MEDialer;->isSmartDialer:Z

    .line 121
    return-void
.end method
