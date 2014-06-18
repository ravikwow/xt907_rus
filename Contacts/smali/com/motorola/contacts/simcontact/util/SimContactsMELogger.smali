.class public Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;
.super Ljava/lang/Object;
.source "SimContactsMELogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/simcontact/util/SimContactsMELogger$MESIMContactsSyncHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static mLaunched:Z

.field private static mMESIMContacts:Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWorkThread:Landroid/os/HandlerThread;

.field private mWorker:Lcom/motorola/contacts/simcontact/util/SimContactsMELogger$MESIMContactsSyncHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->LOG_TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mLaunched:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MESIMContactsLogger"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mWorkThread:Landroid/os/HandlerThread;

    .line 76
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    new-instance v0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger$MESIMContactsSyncHandler;

    iget-object v1, p0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger$MESIMContactsSyncHandler;-><init>(Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mWorker:Lcom/motorola/contacts/simcontact/util/SimContactsMELogger$MESIMContactsSyncHandler;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getSingleInstance(Landroid/content/Context;)Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mMESIMContacts:Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;

    invoke-direct {v0, p0}, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mMESIMContacts:Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;

    .line 84
    :cond_0
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mMESIMContacts:Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;

    return-object v0
.end method

.method public static inited(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 96
    sget-boolean v1, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mLaunched:Z

    if-nez v1, :cond_0

    .line 97
    sput-boolean v0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mLaunched:Z

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {p0}, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->getSingleInstance(Landroid/content/Context;)Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;

    move-result-object v1

    sput-object v1, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mMESIMContacts:Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;

    .line 102
    :cond_0
    sget-object v1, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mMESIMContacts:Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;

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
    .line 118
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method private static logEvent(Lcom/motorola/data/event/api/Event;)V
    .locals 3
    .param p0, "event"    # Lcom/motorola/data/event/api/Event;

    .prologue
    .line 88
    sget-object v1, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mMESIMContacts:Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mMESIMContacts:Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;

    iget-object v1, v1, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mWorker:Lcom/motorola/contacts/simcontact/util/SimContactsMELogger$MESIMContactsSyncHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 90
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMEMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->log(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 93
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static onContactOperation(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "contactId"    # J

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " <- onContactOperation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",contact id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->log(Ljava/lang/String;)V

    .line 107
    invoke-static {p0}, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->inited(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_CONTACTS_STATS_L2"

    const-string v2, "0.1"

    invoke-direct {v0, v1, p1, v2}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v0, "event":Lcom/motorola/data/event/api/Event;
    const-string v1, "contact id"

    invoke-virtual {v0, v1, p2, p3}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;J)V

    .line 110
    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->logEvent(Lcom/motorola/data/event/api/Event;)V

    .line 114
    .end local v0    # "event":Lcom/motorola/data/event/api/Event;
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onContactOperation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
