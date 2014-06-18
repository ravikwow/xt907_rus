.class public Lcom/motorola/contacts/util/MELogger;
.super Ljava/lang/Object;
.source "MELogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/util/MELogger$MESyncHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static mMELogger:Lcom/motorola/contacts/util/MELogger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWorkHandler:Lcom/motorola/contacts/util/MELogger$MESyncHandler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->DBG:Z

    sput-boolean v0, Lcom/motorola/contacts/util/MELogger;->DBG:Z

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/contacts/util/MELogger;->mMELogger:Lcom/motorola/contacts/util/MELogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/motorola/contacts/util/MELogger;->mWorkHandler:Lcom/motorola/contacts/util/MELogger$MESyncHandler;

    .line 57
    iput-object v0, p0, Lcom/motorola/contacts/util/MELogger;->mWorkThread:Landroid/os/HandlerThread;

    .line 58
    iput-object v0, p0, Lcom/motorola/contacts/util/MELogger;->mContext:Landroid/content/Context;

    .line 62
    iput-object p1, p0, Lcom/motorola/contacts/util/MELogger;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MELogger"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/motorola/contacts/util/MELogger;->mWorkThread:Landroid/os/HandlerThread;

    .line 65
    iget-object v0, p0, Lcom/motorola/contacts/util/MELogger;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Lcom/motorola/contacts/util/MELogger$MESyncHandler;

    iget-object v1, p0, Lcom/motorola/contacts/util/MELogger;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/motorola/contacts/util/MELogger$MESyncHandler;-><init>(Lcom/motorola/contacts/util/MELogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/contacts/util/MELogger;->mWorkHandler:Lcom/motorola/contacts/util/MELogger$MESyncHandler;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/contacts/util/MELogger;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/util/MELogger;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/motorola/contacts/util/MELogger;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static createSingleInstance(Landroid/content/Context;)Lcom/motorola/contacts/util/MELogger;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/motorola/contacts/util/MELogger;->mMELogger:Lcom/motorola/contacts/util/MELogger;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/motorola/contacts/util/MELogger;

    invoke-direct {v0, p0}, Lcom/motorola/contacts/util/MELogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/contacts/util/MELogger;->mMELogger:Lcom/motorola/contacts/util/MELogger;

    .line 76
    :cond_0
    sget-object v0, Lcom/motorola/contacts/util/MELogger;->mMELogger:Lcom/motorola/contacts/util/MELogger;

    return-object v0
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-boolean v0, Lcom/motorola/contacts/util/MELogger;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MELogger"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    return-void
.end method

.method public static logEvent(Lcom/motorola/android/provider/CheckinEvent;)V
    .locals 3
    .param p0, "event"    # Lcom/motorola/android/provider/CheckinEvent;

    .prologue
    .line 81
    sget-object v1, Lcom/motorola/contacts/util/MELogger;->mMELogger:Lcom/motorola/contacts/util/MELogger;

    if-eqz v1, :cond_0

    .line 83
    sget-object v1, Lcom/motorola/contacts/util/MELogger;->mMELogger:Lcom/motorola/contacts/util/MELogger;

    iget-object v1, v1, Lcom/motorola/contacts/util/MELogger;->mWorkHandler:Lcom/motorola/contacts/util/MELogger$MESyncHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 84
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

    invoke-static {v1}, Lcom/motorola/contacts/util/MELogger;->log(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
