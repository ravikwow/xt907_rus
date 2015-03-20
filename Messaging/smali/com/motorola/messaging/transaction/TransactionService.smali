.class public Lcom/motorola/messaging/transaction/TransactionService;
.super Landroid/app/Service;
.source "TransactionService.java"

# interfaces
.implements Lcom/motorola/messaging/transaction/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/TransactionService$2;,
        Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;,
        Lcom/motorola/messaging/transaction/TransactionService$MyPhoneStateListener;,
        Lcom/motorola/messaging/transaction/TransactionService$HandleState;,
        Lcom/motorola/messaging/transaction/TransactionService$MainState;,
        Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static MAX_NUM_APN_CONNECTION_FAILURES:I

.field private static mWakeId:I


# instance fields
.field private mHandleState:Lcom/motorola/messaging/transaction/TransactionService$HandleState;

.field public mHdmiToastHandler:Landroid/os/Handler;

.field private mIsCalling:Z

.field private mMainState:Lcom/motorola/messaging/transaction/TransactionService$MainState;

.field private mManager:Lcom/motorola/messaging/transaction/TransactionManager;

.field private mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

.field private mNumApnConnectionFailures:I

.field private mOnDestroyCalled:Z

.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/messaging/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:Lcom/motorola/messaging/transaction/TransactionService$MyPhoneStateListener;

.field private final mProcessing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/messaging/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryScheduler:Lcom/motorola/messaging/transaction/RetryScheduler;

.field private mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    sput-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->DEBUG:Z

    .line 94
    sget-boolean v2, Lcom/motorola/messaging/transaction/TransactionService;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    .line 203
    const/4 v0, 0x2

    sput v0, Lcom/motorola/messaging/transaction/TransactionService;->MAX_NUM_APN_CONNECTION_FAILURES:I

    .line 219
    sput v1, Lcom/motorola/messaging/transaction/TransactionService;->mWakeId:I

    return-void

    :cond_0
    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 205
    iput v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mNumApnConnectionFailures:I

    .line 216
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;->INIT:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mMainState:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    .line 217
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionService$HandleState;->INIT:Lcom/motorola/messaging/transaction/TransactionService$HandleState;

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mHandleState:Lcom/motorola/messaging/transaction/TransactionService$HandleState;

    .line 218
    iput-boolean v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mOnDestroyCalled:Z

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Lcom/motorola/messaging/transaction/TransactionService$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/transaction/TransactionService$1;-><init>(Lcom/motorola/messaging/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mHdmiToastHandler:Landroid/os/Handler;

    .line 1490
    return-void
.end method

.method private abortProcessing(ZLcom/motorola/messaging/transaction/Transaction$Failure;)V
    .locals 7
    .param p1, "waitAbort"    # Z
    .param p2, "reason"    # Lcom/motorola/messaging/transaction/Transaction$Failure;

    .prologue
    .line 832
    sget-boolean v3, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 833
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "abortProcessing, reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :try_start_1
    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/transaction/Transaction;

    .line 839
    .local v2, "t":Lcom/motorola/messaging/transaction/Transaction;
    const-string v3, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - Abort transaction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    if-nez p1, :cond_1

    .line 843
    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/Observable;->removeObservers()V

    .line 846
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/motorola/messaging/transaction/Transaction;->abortTransaction(Lcom/motorola/messaging/transaction/Transaction$Failure;Z)V

    goto :goto_0

    .line 850
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "t":Lcom/motorola/messaging/transaction/Transaction;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "TransactionService"

    const-string v4, "MMS-STATUS - Exception while aborting transaction: "

    invoke-static {v3, v4, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 854
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 850
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/messaging/transaction/TransactionService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/TransactionService;->processPendingDatabaseOperations(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/messaging/transaction/TransactionService;)Lcom/motorola/messaging/transaction/NetworkManager;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/messaging/transaction/TransactionService;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    iget v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mNumApnConnectionFailures:I

    return v0
.end method

.method static synthetic access$1202(Lcom/motorola/messaging/transaction/TransactionService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mNumApnConnectionFailures:I

    return p1
.end method

.method static synthetic access$1300(Lcom/motorola/messaging/transaction/TransactionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->handleConnectivityStarted()V

    return-void
.end method

.method static synthetic access$1400(Lcom/motorola/messaging/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->hasTransactions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/motorola/messaging/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->ignoreApnFailure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/motorola/messaging/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->isPermanentAPNFailure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/motorola/messaging/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->hasPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/motorola/messaging/transaction/TransactionService;Lcom/motorola/messaging/transaction/Transaction$Failure;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;
    .param p1, "x1"    # Lcom/motorola/messaging/transaction/Transaction$Failure;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/TransactionService;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/messaging/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->hasProcessing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/messaging/transaction/TransactionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->showData()V

    return-void
.end method

.method static synthetic access$2000(Lcom/motorola/messaging/transaction/TransactionService;ZLcom/motorola/messaging/transaction/Transaction$Failure;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/motorola/messaging/transaction/Transaction$Failure;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/transaction/TransactionService;->abortProcessing(ZLcom/motorola/messaging/transaction/Transaction$Failure;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/motorola/messaging/transaction/TransactionService;Lcom/motorola/messaging/transaction/Transaction$Failure;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;
    .param p1, "x1"    # Lcom/motorola/messaging/transaction/Transaction$Failure;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/TransactionService;->resumeTransaction(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/motorola/messaging/transaction/TransactionService;ILcom/motorola/messaging/transaction/TransactionBundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/motorola/messaging/transaction/TransactionBundle;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/transaction/TransactionService;->handleCreateTransaction(ILcom/motorola/messaging/transaction/TransactionBundle;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/motorola/messaging/transaction/TransactionService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/TransactionService;->finishIfNeeded(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/motorola/messaging/transaction/TransactionService;ILcom/motorola/messaging/transaction/Transaction$Failure;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/motorola/messaging/transaction/Transaction$Failure;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/transaction/TransactionService;->finishService(ILcom/motorola/messaging/transaction/Transaction$Failure;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/motorola/messaging/transaction/TransactionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->discardPending()V

    return-void
.end method

.method static synthetic access$2700(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/motorola/messaging/transaction/TransactionService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/motorola/messaging/transaction/TransactionService;Lcom/motorola/messaging/transaction/Transaction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;
    .param p1, "x1"    # Lcom/motorola/messaging/transaction/Transaction;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/TransactionService;->isDuplicate(Lcom/motorola/messaging/transaction/Transaction;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/messaging/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mIsCalling:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/motorola/messaging/transaction/TransactionService;Lcom/motorola/messaging/transaction/Transaction;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;
    .param p1, "x1"    # Lcom/motorola/messaging/transaction/Transaction;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/TransactionService;->addToPending(Lcom/motorola/messaging/transaction/Transaction;)V

    return-void
.end method

.method static synthetic access$302(Lcom/motorola/messaging/transaction/TransactionService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mIsCalling:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/motorola/messaging/transaction/TransactionService;Lcom/motorola/messaging/transaction/Transaction;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;
    .param p1, "x1"    # Lcom/motorola/messaging/transaction/Transaction;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/TransactionService;->moveToProcessing(Lcom/motorola/messaging/transaction/Transaction;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/motorola/messaging/transaction/TransactionService;)Lcom/motorola/messaging/transaction/TransactionManager;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/messaging/transaction/TransactionService;)Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/messaging/transaction/TransactionService;)Lcom/motorola/messaging/transaction/TransactionService$MainState;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mMainState:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/messaging/transaction/TransactionService;)Lcom/motorola/messaging/transaction/TransactionService$HandleState;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mHandleState:Lcom/motorola/messaging/transaction/TransactionService$HandleState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/messaging/transaction/TransactionService;Lcom/motorola/messaging/transaction/TransactionService$HandleState;)Lcom/motorola/messaging/transaction/TransactionService$HandleState;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;
    .param p1, "x1"    # Lcom/motorola/messaging/transaction/TransactionService$HandleState;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mHandleState:Lcom/motorola/messaging/transaction/TransactionService$HandleState;

    return-object p1
.end method

.method static synthetic access$800(Lcom/motorola/messaging/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mOnDestroyCalled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/motorola/messaging/transaction/TransactionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/TransactionService;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 4

    .prologue
    .line 1212
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1213
    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1214
    const-string v0, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireWakeLock, instance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1223
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1224
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 1225
    const-string v0, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireWakeLock done, held="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :cond_1
    monitor-exit v1

    .line 1230
    return-void

    .line 1229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addToPending(Lcom/motorola/messaging/transaction/Transaction;)V
    .locals 3

    .prologue
    .line 1482
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1483
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add transaction to pending list, transaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    return-void
.end method

.method private checkDatabaseLater(IJ)V
    .locals 4

    .prologue
    .line 1008
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1009
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDatabaseLater, timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 1013
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 1014
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database will be checked in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/motorola/messaging/transaction/MsgHandler;->sendDelayed(IIJ)V

    .line 1019
    return-void
.end method

.method private checkPendingIfNecessary()V
    .locals 4

    .prologue
    .line 458
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "TransactionService"

    const-string v1, "checkPendingIfNecessary"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_0
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 465
    const-string v0, "TransactionService"

    const-string v1, "Start timer to check pending transactions"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/messaging/transaction/MsgHandler;->sendDelayed(IJ)V

    .line 469
    return-void
.end method

.method private createTransaction(ILcom/motorola/messaging/transaction/TransactionBundle;)Lcom/motorola/messaging/transaction/Transaction;
    .locals 14
    .param p1, "serviceId"    # I
    .param p2, "txnBundle"    # Lcom/motorola/messaging/transaction/TransactionBundle;

    .prologue
    .line 735
    sget-boolean v11, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v11, :cond_0

    .line 736
    const-string v11, "TransactionService"

    const-string v12, "createTransaction"

    invoke-static {v11, v12}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_0
    const/4 v7, 0x0

    .line 740
    .local v7, "transactionSettings":Lcom/motorola/messaging/transaction/TransactionSettings;
    const/4 v5, 0x0

    .line 745
    .local v5, "transaction":Lcom/motorola/messaging/transaction/Transaction;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/messaging/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, "mmsc":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 747
    const-string v11, "TransactionService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MMS-STATUS Transaction Bundle with mmsc filled, mmsc="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    new-instance v8, Lcom/motorola/messaging/transaction/TransactionSettings;

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/messaging/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/messaging/transaction/TransactionBundle;->getProxyPort()I

    move-result v12

    invoke-direct {v8, v2, v11, v12}, Lcom/motorola/messaging/transaction/TransactionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .end local v7    # "transactionSettings":Lcom/motorola/messaging/transaction/TransactionSettings;
    .local v8, "transactionSettings":Lcom/motorola/messaging/transaction/TransactionSettings;
    move-object v7, v8

    .line 764
    .end local v8    # "transactionSettings":Lcom/motorola/messaging/transaction/TransactionSettings;
    .restart local v7    # "transactionSettings":Lcom/motorola/messaging/transaction/TransactionSettings;
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/messaging/transaction/TransactionBundle;->getTransactionType()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 816
    const-string v11, "TransactionService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MMS-STATUS - Invalid transaction type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    const/4 v5, 0x0

    .line 825
    .end local v2    # "mmsc":Ljava/lang/String;
    :goto_1
    sget-boolean v11, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v11, :cond_2

    .line 826
    const-string v11, "TransactionService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createTransaction OUT - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :cond_2
    return-object v5

    .line 751
    .restart local v2    # "mmsc":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsSecondaryMmscEnabled()Z

    move-result v11

    if-nez v11, :cond_4

    .line 752
    sget-boolean v11, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v11, :cond_1

    .line 753
    const-string v11, "TransactionService"

    const-string v12, "Transaction Bundle with no mmsc filled"

    invoke-static {v11, v12}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 820
    .end local v2    # "mmsc":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 821
    .local v0, "ex":Ljava/lang/Exception;
    const-string v11, "TransactionService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MMS-STATUS - Exception occurred while creating transaction: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 822
    invoke-direct {p0, v5}, Lcom/motorola/messaging/transaction/TransactionService;->deleteTransaction(Lcom/motorola/messaging/transaction/Transaction;)V

    goto :goto_1

    .line 758
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "mmsc":Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v8, Lcom/motorola/messaging/transaction/TransactionSettings;

    sget-object v11, Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;->ANY:Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/messaging/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, p0, v11, v12, v13}, Lcom/motorola/messaging/transaction/TransactionSettings;-><init>(Landroid/content/Context;Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "transactionSettings":Lcom/motorola/messaging/transaction/TransactionSettings;
    .restart local v8    # "transactionSettings":Lcom/motorola/messaging/transaction/TransactionSettings;
    move-object v7, v8

    .end local v8    # "transactionSettings":Lcom/motorola/messaging/transaction/TransactionSettings;
    .restart local v7    # "transactionSettings":Lcom/motorola/messaging/transaction/TransactionSettings;
    goto :goto_0

    .line 766
    :pswitch_0
    sget-boolean v11, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v11, :cond_5

    .line 767
    const-string v11, "TransactionService"

    const-string v12, "NOTIFICATION_TRANSACTION"

    invoke-static {v11, v12}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/messaging/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v10

    .line 770
    .local v10, "uri":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 771
    iget-object v11, p0, Lcom/motorola/messaging/transaction/TransactionService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    invoke-virtual {v11, p0, p1, v7, v10}, Lcom/motorola/messaging/transaction/TransactionManager;->createNotificationTransaction(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)Lcom/motorola/messaging/transaction/NotificationTransaction;

    move-result-object v5

    goto :goto_1

    .line 776
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/messaging/transaction/TransactionBundle;->getPushData()[B

    move-result-object v4

    .line 777
    .local v4, "pushData":[B
    new-instance v3, Lcom/motorola/messaging/pdu/PduParser;

    invoke-direct {v3, v4}, Lcom/motorola/messaging/pdu/PduParser;-><init>([B)V

    .line 778
    .local v3, "parser":Lcom/motorola/messaging/pdu/PduParser;
    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduParser;->parse()Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v1

    .line 780
    .local v1, "ind":Lcom/motorola/messaging/pdu/GenericPdu;
    const/16 v9, 0x82

    .line 781
    .local v9, "type":I
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/GenericPdu;->getMessageType()I

    move-result v11

    if-ne v11, v9, :cond_7

    .line 782
    iget-object v11, p0, Lcom/motorola/messaging/transaction/TransactionService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    check-cast v1, Lcom/motorola/messaging/pdu/NotificationInd;

    .end local v1    # "ind":Lcom/motorola/messaging/pdu/GenericPdu;
    invoke-virtual {v11, p0, p1, v7, v1}, Lcom/motorola/messaging/transaction/TransactionManager;->createNotificationTransaction(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Lcom/motorola/messaging/pdu/NotificationInd;)Lcom/motorola/messaging/transaction/NotificationTransaction;

    move-result-object v5

    goto/16 :goto_1

    .line 786
    .restart local v1    # "ind":Lcom/motorola/messaging/pdu/GenericPdu;
    :cond_7
    const-string v11, "TransactionService"

    const-string v12, "MMS-STATUS - Invalid PUSH data."

    invoke-static {v11, v12}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 792
    .end local v1    # "ind":Lcom/motorola/messaging/pdu/GenericPdu;
    .end local v3    # "parser":Lcom/motorola/messaging/pdu/PduParser;
    .end local v4    # "pushData":[B
    .end local v9    # "type":I
    .end local v10    # "uri":Ljava/lang/String;
    :pswitch_1
    sget-boolean v11, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v11, :cond_8

    .line 793
    const-string v11, "TransactionService"

    const-string v12, "RETRIEVE_TRANSACTION"

    invoke-static {v11, v12}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_8
    iget-object v11, p0, Lcom/motorola/messaging/transaction/TransactionService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/messaging/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, p0, p1, v7, v12}, Lcom/motorola/messaging/transaction/TransactionManager;->createRetrieveTransaction(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)Lcom/motorola/messaging/transaction/RetrieveTransaction;

    move-result-object v5

    .line 798
    goto/16 :goto_1

    .line 800
    :pswitch_2
    sget-boolean v11, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v11, :cond_9

    .line 801
    const-string v11, "TransactionService"

    const-string v12, "SEND_TRANSACTION"

    invoke-static {v11, v12}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_9
    new-instance v6, Lcom/motorola/messaging/transaction/SendTransaction;

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/messaging/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, p0, p1, v7, v11}, Lcom/motorola/messaging/transaction/SendTransaction;-><init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v5    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    .local v6, "transaction":Lcom/motorola/messaging/transaction/Transaction;
    move-object v5, v6

    .line 806
    .end local v6    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    .restart local v5    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    goto/16 :goto_1

    .line 808
    :pswitch_3
    sget-boolean v11, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v11, :cond_a

    .line 809
    const-string v11, "TransactionService"

    const-string v12, "READREC_TRANSACTION"

    invoke-static {v11, v12}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_a
    new-instance v6, Lcom/motorola/messaging/transaction/ReadRecTransaction;

    invoke-virtual/range {p2 .. p2}, Lcom/motorola/messaging/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, p0, p1, v7, v11}, Lcom/motorola/messaging/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v5    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    .restart local v6    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    move-object v5, v6

    .line 814
    .end local v6    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    .restart local v5    # "transaction":Lcom/motorola/messaging/transaction/Transaction;
    goto/16 :goto_1

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createWakeLock()V
    .locals 4

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 1196
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1197
    sget v1, Lcom/motorola/messaging/transaction/TransactionService;->mWakeId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/motorola/messaging/transaction/TransactionService;->mWakeId:I

    .line 1198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-Connectivity-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/motorola/messaging/transaction/TransactionService;->mWakeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1199
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1200
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1201
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1202
    const-string v0, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWakeLock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", instance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :cond_0
    return-void
.end method

.method private deleteTransaction(Lcom/motorola/messaging/transaction/Transaction;)V
    .locals 3

    .prologue
    .line 1340
    if-eqz p1, :cond_1

    .line 1342
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/motorola/messaging/transaction/Observable;->detach(Lcom/motorola/messaging/transaction/Observer;)V

    .line 1343
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1344
    :try_start_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1347
    :cond_0
    monitor-exit v1

    .line 1356
    :cond_1
    :goto_0
    return-void

    .line 1347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    :try_start_3
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Unexpected Throwable."

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1353
    :catchall_1
    move-exception v0

    throw v0
.end method

.method private discardPending()V
    .locals 5

    .prologue
    .line 915
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 916
    const-string v0, "TransactionService"

    const-string v1, "discardPending"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    .line 921
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 922
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/transaction/Transaction;

    .line 923
    sget-boolean v2, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 924
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Discard pending transaction, transaction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 927
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    return-void
.end method

.method private discardProcessing()V
    .locals 5

    .prologue
    .line 890
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 891
    const-string v0, "TransactionService"

    const-string v1, "discardProcessing"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 898
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/transaction/Transaction;

    .line 899
    sget-boolean v2, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 900
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Discard processing transaction, transaction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_1
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService;->mRetryScheduler:Lcom/motorola/messaging/transaction/RetryScheduler;

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/transaction/Observable;->detach(Lcom/motorola/messaging/transaction/Observer;)V

    .line 905
    invoke-direct {p0, v0}, Lcom/motorola/messaging/transaction/TransactionService;->deleteTransaction(Lcom/motorola/messaging/transaction/Transaction;)V

    goto :goto_0

    .line 907
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 909
    :catch_0
    move-exception v0

    .line 910
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Exception while discarding transactions "

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 912
    :goto_1
    return-void

    .line 907
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private finishIfNeeded(I)Z
    .locals 4
    .param p1, "startId"    # I

    .prologue
    const/4 v1, 0x1

    .line 473
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->getNetworkRestriction()Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    move-result-object v0

    .line 476
    .local v0, "restriction":Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;
    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_AIRPLANE_MODE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    if-ne v0, v2, :cond_1

    .line 477
    sget-boolean v2, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 478
    const-string v2, "TransactionService"

    const-string v3, "MMS-STATUS - Airplane was turned on, stop service"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_0
    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->AIRPLANE_MODE:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-direct {p0, p1, v2}, Lcom/motorola/messaging/transaction/TransactionService;->finishService(ILcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 509
    :goto_0
    return v1

    .line 486
    :cond_1
    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_DATA_DISABLED:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    if-ne v0, v2, :cond_3

    .line 487
    sget-boolean v2, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_2

    .line 488
    const-string v2, "TransactionService"

    const-string v3, "MMS-STATUS - Data was disabled, stop service"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_2
    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->DATA_DISABLED:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-direct {p0, p1, v2}, Lcom/motorola/messaging/transaction/TransactionService;->finishService(ILcom/motorola/messaging/transaction/Transaction$Failure;)V

    goto :goto_0

    .line 496
    :cond_3
    sget-object v2, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_NETWORK_UNAVAILABLE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    if-ne v0, v2, :cond_6

    .line 497
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/TransactionService;->isConnectivityReady()Z

    move-result v2

    if-nez v2, :cond_4

    .line 499
    const-string v2, "TransactionService"

    const-string v3, "MMS-STATUS - Ignore MMS Network availability - Connectivity is not ready"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_4
    sget-boolean v2, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_5

    .line 502
    const-string v2, "TransactionService"

    const-string v3, "MMS-STATUS - Network unavailable, stop service"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_5
    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->NETWORK_AVAILABILITY:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-direct {p0, p1, v2}, Lcom/motorola/messaging/transaction/TransactionService;->finishService(ILcom/motorola/messaging/transaction/Transaction$Failure;)V

    goto :goto_0

    .line 509
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private finishService(ILcom/motorola/messaging/transaction/Transaction$Failure;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 970
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 971
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishService, startId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failureReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v3, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 976
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->NONE:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-eq p2, v0, :cond_4

    .line 980
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->hasProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    sget-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->NETWORK_AVAILABILITY:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-eq p2, v0, :cond_1

    .line 982
    invoke-direct {p0, v3, p2}, Lcom/motorola/messaging/transaction/TransactionService;->abortProcessing(ZLcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 988
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->hasPending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 989
    invoke-direct {p0, p2}, Lcom/motorola/messaging/transaction/TransactionService;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 990
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0xc

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/messaging/transaction/MsgHandler;->sendDelayed(IJ)V

    .line 1001
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->hasTransactions()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1002
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/TransactionService;->endMmsConnectivity()V

    .line 1003
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/TransactionService;->stopSelfNow(I)V

    .line 1005
    :cond_3
    return-void

    .line 997
    :cond_4
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mRetryScheduler:Lcom/motorola/messaging/transaction/RetryScheduler;

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/RetryScheduler;->restartNextRetryAlarm()V

    goto :goto_0
.end method

.method private getMaxNumOfStarts()I
    .locals 1

    .prologue
    .line 335
    const/4 v0, -0x1

    return v0
.end method

.method private getStartType(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.motorola.contracts.messaging.intent.SEND_MMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const/4 v1, 0x6

    .line 331
    :goto_0
    return v1

    .line 307
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "com.motorola.blur.conversation.ACTION_SERVICE_STATE_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    const/4 v1, 0x3

    goto :goto_0

    .line 311
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "com.motorola.blur.conversation.ACTION_SERVICE_STATE_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    const/4 v1, 0x4

    goto :goto_0

    .line 315
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "com.motorola.blur.conversation.ACTION_APN_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    const/4 v1, 0x7

    goto :goto_0

    .line 319
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "com.motorola.blur.conversation.ACTION_MMS_APN_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 320
    const/16 v1, 0x8

    goto :goto_0

    .line 323
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "android.intent.action.ACTION_ONALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 324
    const/4 v1, 0x5

    goto :goto_0

    .line 327
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 328
    const/4 v1, 0x2

    goto :goto_0

    .line 331
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getTransactionType(I)I
    .locals 3
    .param p1, "msgType"    # I

    .prologue
    .line 652
    sparse-switch p1, :sswitch_data_0

    .line 660
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-STATUS - Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 654
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 656
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 658
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 652
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method private getTreadInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread=(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleApnAlreadyActive(Z)V
    .locals 4

    .prologue
    .line 1260
    if-eqz p1, :cond_0

    .line 1261
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - Extending MMS connectivity accepted, check again after seconds=30"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :goto_0
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->handleConnectivityStarted()V

    .line 1271
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/messaging/transaction/MsgHandler;->sendDelayed(IJ)V

    .line 1272
    return-void

    .line 1265
    :cond_0
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - MMS already active"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleApnSwitchAccepted()V
    .locals 4

    .prologue
    .line 1275
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1276
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - Request to start MMS connectivity accepted"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x7

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/messaging/transaction/MsgHandler;->sendDelayed(IJ)V

    .line 1280
    return-void
.end method

.method private handleConnectivityStarted()V
    .locals 2

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/transaction/MsgHandler;->cancel(I)V

    .line 1931
    return-void
.end method

.method private handleCreateTransaction(ILcom/motorola/messaging/transaction/TransactionBundle;)V
    .locals 7
    .param p1, "startId"    # I
    .param p2, "txnBundle"    # Lcom/motorola/messaging/transaction/TransactionBundle;

    .prologue
    .line 676
    sget-boolean v1, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 677
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCreateTransaction - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/transaction/TransactionService;->createTransaction(ILcom/motorola/messaging/transaction/TransactionBundle;)Lcom/motorola/messaging/transaction/Transaction;

    move-result-object v0

    .line 682
    .local v0, "transaction":Lcom/motorola/messaging/transaction/Transaction;
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v2

    .line 683
    if-eqz v0, :cond_2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/motorola/messaging/transaction/TransactionService;->isDuplicate(Lcom/motorola/messaging/transaction/Transaction;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 687
    sget-boolean v1, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 688
    const-string v1, "TransactionService"

    const-string v3, "Cancel timer to check pending transactions"

    invoke-static {v1, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/motorola/messaging/transaction/MsgHandler;->cancel(I)V

    .line 692
    invoke-direct {p0, v0}, Lcom/motorola/messaging/transaction/TransactionService;->addToPending(Lcom/motorola/messaging/transaction/Transaction;)V

    .line 694
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/Transaction;->getType()I

    move-result v3

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/motorola/messaging/transaction/MsgHandler;->sendDelayed(IIJ)V

    .line 696
    :cond_2
    monitor-exit v2

    .line 697
    return-void

    .line 696
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleHdmiMmsReceived(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1181
    invoke-static {p0}, Lcom/motorola/messaging/util/MessageUtils;->isHdmiOn(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mHdmiToastHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1184
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1185
    invoke-static {p1, v2}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1186
    const-string v3, "fromAddress"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1188
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mHdmiToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1190
    :cond_0
    return-void
.end method

.method private hasPending()Z
    .locals 2

    .prologue
    .line 957
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    .line 958
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 959
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hasProcessing()Z
    .locals 2

    .prologue
    .line 950
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    .line 951
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 952
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hasTransactions()Z
    .locals 2

    .prologue
    .line 964
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    .line 965
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->hasProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->hasPending()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ignoreApnFailure()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1905
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isOnCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1907
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Ignore switch failure since voice call is connected"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    :goto_0
    return v0

    .line 1911
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/TransactionService;->isConnectivityReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1913
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Ignore switch failure, Connectivity is not ready"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1917
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDuplicate(Lcom/motorola/messaging/transaction/Transaction;)Z
    .locals 7
    .param p1, "transaction"    # Lcom/motorola/messaging/transaction/Transaction;

    .prologue
    const/4 v2, 0x1

    .line 700
    sget-boolean v3, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 701
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDuplicate - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_0
    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v3

    .line 705
    :try_start_0
    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/transaction/Transaction;

    .line 706
    .local v1, "t":Lcom/motorola/messaging/transaction/Transaction;
    invoke-virtual {v1, p1}, Lcom/motorola/messaging/transaction/Transaction;->isEquivalent(Lcom/motorola/messaging/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 707
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - isDuplicate - Transaction already pending: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {p1}, Lcom/motorola/messaging/transaction/Transaction;->getType()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-virtual {v1}, Lcom/motorola/messaging/transaction/Transaction;->getType()I

    move-result v4

    if-nez v4, :cond_2

    .line 712
    check-cast v1, Lcom/motorola/messaging/transaction/NotificationTransaction;

    .end local v1    # "t":Lcom/motorola/messaging/transaction/Transaction;
    invoke-virtual {v1}, Lcom/motorola/messaging/transaction/NotificationTransaction;->forceDownload()V

    .line 714
    :cond_2
    monitor-exit v3

    .line 729
    :goto_0
    return v2

    .line 718
    :cond_3
    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/transaction/Transaction;

    .line 719
    .restart local v1    # "t":Lcom/motorola/messaging/transaction/Transaction;
    invoke-virtual {v1, p1}, Lcom/motorola/messaging/transaction/Transaction;->isEquivalent(Lcom/motorola/messaging/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 720
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - isDuplicate - Transaction already processing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    monitor-exit v3

    goto :goto_0

    .line 724
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lcom/motorola/messaging/transaction/Transaction;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    sget-boolean v2, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_6

    .line 727
    const-string v2, "TransactionService"

    const-string v3, "isDuplicate - false"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isNoFailure(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 648
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPermanentAPNFailure()Z
    .locals 2

    .prologue
    .line 1921
    iget v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mNumApnConnectionFailures:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mNumApnConnectionFailures:I

    .line 1922
    iget v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mNumApnConnectionFailures:I

    sget v1, Lcom/motorola/messaging/transaction/TransactionService;->MAX_NUM_APN_CONNECTION_FAILURES:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPermanentFailure(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 644
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchTransaction(ILcom/motorola/messaging/transaction/TransactionBundle;)V
    .locals 6
    .param p1, "startId"    # I
    .param p2, "txnBundle"    # Lcom/motorola/messaging/transaction/TransactionBundle;

    .prologue
    .line 666
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 667
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchTransaction - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/16 v3, 0xb

    const-wide/16 v4, 0x0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/messaging/transaction/MsgHandler;->sendDelayedNoCancel(ILjava/lang/Object;IJ)V

    .line 673
    return-void
.end method

.method private moveToProcessing(Lcom/motorola/messaging/transaction/Transaction;)V
    .locals 3

    .prologue
    .line 1471
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1472
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Move transaction to processing list, transaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1476
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    return-void
.end method

.method private notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V
    .locals 6

    .prologue
    .line 931
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 932
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFailure, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    :try_start_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/transaction/Transaction;

    .line 939
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS-STATUS - Fail transaction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-virtual {v0, p1}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    goto :goto_0

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 943
    :catch_0
    move-exception v0

    .line 944
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Exception while failing transaction: "

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 946
    :goto_1
    return-void

    .line 942
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private processPendingDatabaseOperations(I)V
    .locals 21
    .param p1, "startId"    # I

    .prologue
    .line 514
    sget-boolean v17, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_0

    .line 515
    const-string v17, "TransactionService"

    const-string v18, "processPendingDatabaseOperations"

    invoke-static/range {v17 .. v18}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/motorola/messaging/transaction/TransactionService;->finishIfNeeded(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 622
    :goto_0
    return-void

    .line 523
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 525
    .local v6, "current":J
    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/motorola/messaging/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v8

    .line 527
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 532
    .local v12, "numPendingMsg":I
    :goto_1
    :try_start_0
    sget-boolean v17, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_2

    .line 533
    const-string v17, "TransactionService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MMS-STATUS - Process pending MMS messages on database older than "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "kk:mm:ss."

    move-object/from16 v0, v19

    invoke-static {v0, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/TransactionService;->checkPendingIfNecessary()V

    .line 543
    if-nez v12, :cond_6

    .line 544
    sget-boolean v17, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_3

    .line 545
    const-string v17, "TransactionService"

    const-string v18, "MMS-STATUS - No pending messages on database"

    invoke-static/range {v17 .. v18}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_3
    sget-object v17, Lcom/motorola/messaging/transaction/Transaction$Failure;->NONE:Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/TransactionService;->finishService(ILcom/motorola/messaging/transaction/Transaction$Failure;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :cond_4
    invoke-static {v8}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 527
    .end local v12    # "numPendingMsg":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 552
    .restart local v12    # "numPendingMsg":I
    :cond_6
    :try_start_1
    sget-boolean v17, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_7

    .line 553
    const-string v17, "TransactionService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MMS-STATUS - Number of pending messages on database: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_7
    const-string v17, "msg_id"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 558
    .local v4, "columnIndexOfMsgId":I
    const-string v17, "msg_type"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 561
    .local v5, "columnIndexOfMsgType":I
    :cond_8
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 562
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 563
    .local v11, "msgType":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/motorola/messaging/transaction/TransactionService;->getTransactionType(I)I

    move-result v15

    .line 564
    .local v15, "transactionType":I
    const-string v17, "err_type"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 566
    .local v10, "failureType":I
    const-string v17, "due_time"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 568
    .local v13, "retryAt":J
    sget-boolean v17, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_9

    .line 569
    const-string v17, "TransactionService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "processPendingDatabaseOperations, check, msgId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", transactionType="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", failureType="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", retryAt="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_9
    packed-switch v15, :pswitch_data_0

    .line 605
    :cond_a
    :pswitch_0
    sget-object v17, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 608
    .local v16, "uri":Landroid/net/Uri;
    new-instance v3, Lcom/motorola/messaging/transaction/TransactionBundle;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v15, v0}, Lcom/motorola/messaging/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 610
    .local v3, "args":Lcom/motorola/messaging/transaction/TransactionBundle;
    sget-boolean v17, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_b

    .line 611
    const-string v17, "TransactionService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MMS-STATUS - Found pending transaction, uri="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/transaction/TransactionService;->launchTransaction(ILcom/motorola/messaging/transaction/TransactionBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 620
    .end local v3    # "args":Lcom/motorola/messaging/transaction/TransactionBundle;
    .end local v4    # "columnIndexOfMsgId":I
    .end local v5    # "columnIndexOfMsgType":I
    .end local v10    # "failureType":I
    .end local v11    # "msgType":I
    .end local v13    # "retryAt":J
    .end local v15    # "transactionType":I
    .end local v16    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v17

    invoke-static {v8}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v17

    .line 578
    .restart local v4    # "columnIndexOfMsgId":I
    .restart local v5    # "columnIndexOfMsgType":I
    .restart local v10    # "failureType":I
    .restart local v11    # "msgType":I
    .restart local v13    # "retryAt":J
    .restart local v15    # "transactionType":I
    :pswitch_1
    :try_start_2
    const-string v17, "TransactionService"

    const-string v18, "transactionType = -1"

    invoke-static/range {v17 .. v18}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 585
    :pswitch_2
    invoke-static {v10}, Lcom/motorola/messaging/transaction/TransactionService;->isPermanentFailure(I)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 586
    sget-boolean v17, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_8

    .line 587
    const-string v17, "TransactionService"

    const-string v18, "MMS-STATUS - Skip download for MMS with permanent failure"

    invoke-static/range {v17 .. v18}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 591
    :cond_c
    invoke-static {v10}, Lcom/motorola/messaging/transaction/TransactionService;->isNoFailure(I)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/transaction/TransactionService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/messaging/transaction/TransactionManager;->getDownloadManager()Lcom/motorola/messaging/transaction/DownloadManager;

    move-result-object v9

    .line 593
    .local v9, "downloadManager":Lcom/motorola/messaging/transaction/DownloadManager;
    if-eqz v9, :cond_a

    .line 594
    invoke-virtual {v9}, Lcom/motorola/messaging/transaction/DownloadManager;->isAuto()Z

    move-result v17

    if-nez v17, :cond_a

    .line 595
    sget-boolean v17, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_8

    .line 596
    const-string v17, "TransactionService"

    const-string v18, "MMS-STATUS - Skip retry for MMS since auto-retry is disabled"

    invoke-static/range {v17 .. v18}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 576
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private releaseWakeLock()V
    .locals 4

    .prologue
    .line 1235
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    :try_start_1
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1237
    const-string v0, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseWakeLock, instance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1248
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 1249
    const-string v0, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseWakeLock done, held="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :cond_1
    monitor-exit v1

    .line 1257
    :goto_0
    return-void

    .line 1253
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Exception while releasing wake lock"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resumeTransaction(Lcom/motorola/messaging/transaction/Transaction$Failure;)V
    .locals 6

    .prologue
    .line 857
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 858
    const-string v0, "TransactionService"

    const-string v1, "resumeTransaction START"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :try_start_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/transaction/Transaction;

    .line 864
    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 865
    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 866
    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    invoke-virtual {v3, v0}, Lcom/motorola/messaging/transaction/TransactionManager;->createTransaction(Lcom/motorola/messaging/transaction/Transaction;)Lcom/motorola/messaging/transaction/Transaction;

    move-result-object v3

    .line 867
    if-nez v3, :cond_3

    .line 868
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS-STATUS - Resume not supported, transaction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 880
    :catch_0
    move-exception v0

    .line 881
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Exception while resuming transaction: "

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 884
    :goto_1
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 885
    const-string v0, "TransactionService"

    const-string v1, "resumeTransaction END"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :cond_2
    return-void

    .line 871
    :cond_3
    :try_start_3
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_4

    .line 872
    const-string v0, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS-STATUS - Resume transaction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :cond_4
    invoke-direct {p0, v3}, Lcom/motorola/messaging/transaction/TransactionService;->addToPending(Lcom/motorola/messaging/transaction/Transaction;)V

    goto :goto_0

    .line 879
    :cond_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private showData()V
    .locals 4

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1285
    :goto_0
    sget-boolean v1, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 1286
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data State, state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", suspended="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    :cond_0
    return-void

    .line 1283
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopSelfNow(I)V
    .locals 3
    .param p1, "startId"    # I

    .prologue
    .line 625
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 626
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-THREAD - stopSelf - thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_0
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 631
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - Stop service"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_1
    if-lez p1, :cond_2

    .line 635
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    .line 640
    :goto_0
    return-void

    .line 638
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0
.end method

.method private waitConnectivityStartup(IJ)V
    .locals 2
    .param p1, "startId"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/motorola/messaging/transaction/MsgHandler;->sendDelayed(IIJ)V

    .line 1927
    return-void
.end method


# virtual methods
.method protected beginMmsConnectivity(Z)Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;
    .locals 4

    .prologue
    .line 1293
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1294
    const-string v0, "TransactionService"

    const-string v1, "beginMmsConnectivity"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;->FAILED:Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;

    .line 1298
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->showData()V

    .line 1301
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->retrieveAPNMccMnc()V

    .line 1307
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isOnCall()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1309
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->onDataSuspended()V

    .line 1310
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;->SUSPENDED:Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;

    .line 1332
    :goto_0
    sget-boolean v1, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 1333
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginMmsConnectivity, return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    :cond_1
    return-object v0

    .line 1313
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

    const/4 v1, 0x0

    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->getDefaultMMSFeature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/transaction/NetworkManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 1316
    sget v1, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_ALREADY_ACTIVE:I

    if-ne v0, v1, :cond_3

    .line 1317
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/TransactionService;->handleApnAlreadyActive(Z)V

    .line 1318
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->acquireWakeLock()V

    .line 1319
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;->CONNECTED:Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;

    goto :goto_0

    .line 1320
    :cond_3
    sget v1, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_REQUEST_STARTED:I

    if-ne v0, v1, :cond_4

    .line 1321
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->handleApnSwitchAccepted()V

    .line 1322
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->acquireWakeLock()V

    .line 1323
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;->IN_PROGRESS:Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;

    goto :goto_0

    .line 1327
    :cond_4
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS-STATUS - Cannot establish MMS connectivity, invalid result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;->FAILED:Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;

    goto :goto_0
.end method

.method protected endMmsConnectivity()V
    .locals 3

    .prologue
    .line 1359
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - No more transactions, release MMS connection"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/transaction/MsgHandler;->cancel(I)V

    .line 1365
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

    const/4 v1, 0x0

    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->getDefaultMMSFeature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/transaction/NetworkManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->releaseWakeLock()V

    .line 1369
    return-void

    .line 1367
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->releaseWakeLock()V

    throw v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1056
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;->FINALIZE:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mMainState:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    .line 1058
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1059
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize, instance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->releaseWakeLock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1074
    return-void

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    :try_start_1
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Exception while finalizing service"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1072
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method isConnectivityReady()Z
    .locals 2

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1051
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 255
    sget-object v1, Lcom/motorola/messaging/transaction/TransactionService$MainState;->ON_CREATE:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    iput-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mMainState:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    .line 257
    sget-boolean v1, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 258
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS-THREAD onCreate - START, instance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->createWakeLock()V

    .line 270
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TransactionService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "thread":Landroid/os/HandlerThread;
    sget-boolean v1, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 273
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS-THREAD onCreate, start new thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 277
    sget-object v1, Lcom/motorola/messaging/transaction/TransactionService$HandleState;->STARTED:Lcom/motorola/messaging/transaction/TransactionService$HandleState;

    iput-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mHandleState:Lcom/motorola/messaging/transaction/TransactionService$HandleState;

    .line 278
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    .line 279
    new-instance v1, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;-><init>(Lcom/motorola/messaging/transaction/TransactionService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    .line 281
    new-instance v1, Lcom/motorola/messaging/transaction/TransactionService$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/messaging/transaction/TransactionService$MyPhoneStateListener;-><init>(Lcom/motorola/messaging/transaction/TransactionService;Lcom/motorola/messaging/transaction/TransactionService$1;)V

    iput-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mPhoneStateListener:Lcom/motorola/messaging/transaction/TransactionService$MyPhoneStateListener;

    .line 282
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 283
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService;->mPhoneStateListener:Lcom/motorola/messaging/transaction/TransactionService$MyPhoneStateListener;

    const/16 v3, 0x61

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 288
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isOnCall()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mIsCalling:Z

    .line 289
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    .line 290
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/transaction/TransactionManager;->setServiceHandler(Landroid/os/Handler;)V

    .line 291
    invoke-static {}, Lcom/motorola/messaging/transaction/RetryScheduler;->getInstance()Lcom/motorola/messaging/transaction/RetryScheduler;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mRetryScheduler:Lcom/motorola/messaging/transaction/RetryScheduler;

    .line 292
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/transaction/TransactionManager;->getNetworkManager()Lcom/motorola/messaging/transaction/NetworkManager;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

    .line 294
    sget-boolean v1, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 295
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS-THREAD onCreate - END, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 1023
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;->ON_DESTROY:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mMainState:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    .line 1025
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1026
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-THREAD - onDestroy, instance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", num threads="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->hasTransactions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1034
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - TransactionService exiting with transaction still pending"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->discardPending()V

    .line 1037
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->discardProcessing()V

    .line 1042
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService;->mPhoneStateListener:Lcom/motorola/messaging/transaction/TransactionService$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mOnDestroyCalled:Z

    .line 1045
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionService$HandleState;->QUITTING:Lcom/motorola/messaging/transaction/TransactionService$HandleState;

    iput-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mHandleState:Lcom/motorola/messaging/transaction/TransactionService$HandleState;

    .line 1046
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/messaging/transaction/MsgHandler;->sendDelayed(IJ)V

    .line 1047
    return-void
.end method

.method public onResult(Lcom/motorola/messaging/transaction/Observable;)V
    .locals 8

    .prologue
    .line 1081
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1082
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :cond_0
    check-cast p1, Lcom/motorola/messaging/transaction/Transaction;

    .line 1086
    invoke-virtual {p1}, Lcom/motorola/messaging/transaction/Transaction;->getState()Lcom/motorola/messaging/transaction/TransactionState;

    move-result-object v0

    .line 1087
    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v1

    .line 1089
    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v1, v2, :cond_7

    .line 1090
    sget-boolean v2, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 1091
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Transaction completed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :cond_1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1102
    :try_start_1
    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1103
    sget-boolean v3, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v3, :cond_2

    .line 1104
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove transaction from processing list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_2
    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1108
    sget-boolean v3, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v3, :cond_3

    .line 1109
    const-string v3, "TransactionService"

    const-string v4, "MMS-STATUS - Process next pending transaction"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_3
    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/4 v4, 0x4

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/motorola/messaging/transaction/MsgHandler;->sendDelayed(IIJ)V

    .line 1114
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1116
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1118
    const-string v3, "state"

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1120
    sget-object v3, Lcom/motorola/messaging/transaction/TransactionService$2;->$SwitchMap$com$motorola$messaging$transaction$Transaction$State:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1157
    const-string v0, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - update, transaction state unknown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    :goto_1
    :pswitch_0
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_5

    .line 1163
    const-string v0, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting intent with result state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ordinal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    :cond_5
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1169
    invoke-virtual {p1}, Lcom/motorola/messaging/transaction/Transaction;->getServiceId()I

    move-result v0

    .line 1170
    invoke-virtual {p1, p0}, Lcom/motorola/messaging/transaction/Observable;->detach(Lcom/motorola/messaging/transaction/Observer;)V

    .line 1171
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->hasTransactions()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1172
    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$Failure;->NONE:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-direct {p0, v0, v1}, Lcom/motorola/messaging/transaction/TransactionService;->finishService(ILcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 1175
    :cond_6
    return-void

    .line 1095
    :cond_7
    sget-boolean v2, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 1096
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Transaction failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1114
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1169
    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Lcom/motorola/messaging/transaction/Transaction;->getServiceId()I

    move-result v1

    .line 1170
    invoke-virtual {p1, p0}, Lcom/motorola/messaging/transaction/Observable;->detach(Lcom/motorola/messaging/transaction/Observer;)V

    .line 1171
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->hasTransactions()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1172
    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->NONE:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-direct {p0, v1, v2}, Lcom/motorola/messaging/transaction/TransactionService;->finishService(ILcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 1169
    :cond_8
    throw v0

    .line 1122
    :pswitch_1
    :try_start_5
    const-string v3, "uri"

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1125
    invoke-virtual {p1}, Lcom/motorola/messaging/transaction/Transaction;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 1128
    :pswitch_2
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/motorola/messaging/util/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 1129
    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 1131
    sget-boolean v3, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v3, :cond_9

    .line 1132
    const-string v3, "TransactionService"

    const-string v4, "MMS-STATUS - MMS is fully received"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    :cond_9
    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1137
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.blur.messaging.MMS_RECEIVED_ACTION"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1138
    const-string v4, "URI"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1142
    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessageUtils;->getMmsFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/transaction/TransactionService;->handleHdmiMmsReceived(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1147
    :pswitch_3
    invoke-static {}, Lcom/motorola/messaging/transaction/RateController;->getInstance()Lcom/motorola/messaging/transaction/RateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/RateController;->update()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 1120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1125
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const-wide/16 v7, 0x0

    .line 340
    sget-object v4, Lcom/motorola/messaging/transaction/TransactionService$MainState;->ON_START:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    iput-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService;->mMainState:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    .line 342
    sget-boolean v4, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 343
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-THREAD - onStartCommand START, instance="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", startId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", num threads: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start transaction service, app version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getMaxNumOfStarts()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->getMaxNumOfStarts()I

    move-result v4

    if-le p3, v4, :cond_2

    .line 357
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - startId too big, stop service, startId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-direct {p0, p3}, Lcom/motorola/messaging/transaction/TransactionService;->stopSelfNow(I)V

    .line 453
    :cond_1
    :goto_0
    return v10

    .line 362
    :cond_2
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/TransactionService;->getStartType(Landroid/content/Intent;)I

    move-result v2

    .line 363
    .local v2, "startType":I
    sget-boolean v4, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_3

    .line 364
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - Request to start/stop transation, type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 447
    :goto_1
    sget-boolean v4, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_1

    .line 448
    const-string v4, "TransactionService"

    const-string v5, "MMS-THREAD - onStartCommand END"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :pswitch_0
    sget-boolean v4, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_4

    .line 370
    const-string v4, "TransactionService"

    const-string v5, "onStart: send mms in background..."

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 373
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/motorola/messaging/transaction/TransactionBundle;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v9, v4}, Lcom/motorola/messaging/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 375
    .local v1, "push_args":Lcom/motorola/messaging/transaction/TransactionBundle;
    invoke-direct {p0, p3, v1}, Lcom/motorola/messaging/transaction/TransactionService;->launchTransaction(ILcom/motorola/messaging/transaction/TransactionBundle;)V

    goto :goto_1

    .line 379
    .end local v1    # "push_args":Lcom/motorola/messaging/transaction/TransactionBundle;
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_1
    sget-boolean v4, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_5

    .line 380
    const-string v4, "TransactionService"

    const-string v5, "onStart: launch transaction..."

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_5
    new-instance v0, Lcom/motorola/messaging/transaction/TransactionBundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/messaging/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    .line 383
    .local v0, "args":Lcom/motorola/messaging/transaction/TransactionBundle;
    invoke-direct {p0, p3, v0}, Lcom/motorola/messaging/transaction/TransactionService;->launchTransaction(ILcom/motorola/messaging/transaction/TransactionBundle;)V

    goto :goto_1

    .line 387
    .end local v0    # "args":Lcom/motorola/messaging/transaction/TransactionBundle;
    :pswitch_2
    sget-boolean v4, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_6

    .line 388
    const-string v4, "TransactionService"

    const-string v5, "onStart: service off..."

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_6
    invoke-direct {p0, p3}, Lcom/motorola/messaging/transaction/TransactionService;->finishIfNeeded(I)Z

    goto :goto_1

    .line 398
    :pswitch_3
    sget-boolean v4, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_7

    .line 399
    const-string v4, "TransactionService"

    const-string v5, "onStart: service state on..."

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_7
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getConnectivityWaitTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p3, v4, v5}, Lcom/motorola/messaging/transaction/TransactionService;->waitConnectivityStartup(IJ)V

    .line 414
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getInServiceWaitTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p3, v4, v5}, Lcom/motorola/messaging/transaction/TransactionService;->checkDatabaseLater(IJ)V

    goto :goto_1

    .line 418
    :pswitch_4
    sget-boolean v4, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_8

    .line 419
    const-string v4, "TransactionService"

    const-string v5, "MMS-STATUS - retry alarm expired, check pending messages"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_8
    invoke-direct {p0, p3, v7, v8}, Lcom/motorola/messaging/transaction/TransactionService;->checkDatabaseLater(IJ)V

    goto :goto_1

    .line 426
    :pswitch_5
    sget-boolean v4, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_9

    .line 427
    const-string v4, "TransactionService"

    const-string v5, "MMS-STATUS - APN changed"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_9
    const-wide/16 v4, 0x2710

    invoke-direct {p0, p3, v4, v5}, Lcom/motorola/messaging/transaction/TransactionService;->checkDatabaseLater(IJ)V

    goto/16 :goto_1

    .line 439
    :pswitch_6
    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v4, v9, v7, v8}, Lcom/motorola/messaging/transaction/MsgHandler;->sendDelayed(IJ)V

    goto/16 :goto_1

    .line 443
    :pswitch_7
    invoke-direct {p0, p3, v7, v8}, Lcom/motorola/messaging/transaction/TransactionService;->checkDatabaseLater(IJ)V

    goto/16 :goto_1

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public startTimeoutForVoiceCall(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 1372
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsTransferTimeoutForVoiceCall()I

    move-result v0

    if-nez v0, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1376
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService;->hasProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1385
    :cond_2
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_3

    .line 1386
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-STATUS - Start voice call timeout, timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsTransferTimeoutForVoiceCall()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :cond_3
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0x8

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsTransferTimeoutForVoiceCall()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/messaging/transaction/MsgHandler;->sendDelayed(IJ)V

    goto :goto_0
.end method

.method public stopTimeoutForVoiceCall()V
    .locals 2

    .prologue
    .line 1395
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsTransferTimeoutForVoiceCall()I

    move-result v0

    if-nez v0, :cond_0

    .line 1404
    :goto_0
    return-void

    .line 1399
    :cond_0
    sget-boolean v0, Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 1400
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - Stop voice call timeout"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/transaction/MsgHandler;->cancel(I)V

    goto :goto_0
.end method
