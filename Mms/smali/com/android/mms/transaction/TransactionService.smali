.class public Lcom/android/mms/transaction/TransactionService;
.super Landroid/app/Service;
.source "TransactionService.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/TransactionService$1;,
        Lcom/android/mms/transaction/TransactionService$ServiceHandler;,
        Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;,
        Lcom/android/mms/transaction/TransactionService$HandleState;,
        Lcom/android/mms/transaction/TransactionService$MainState;,
        Lcom/android/mms/transaction/TransactionService$MMSNetworkState;
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z

.field private static MAX_NUM_APN_CONNECTION_FAILURES:I

.field private static mWakeId:I


# instance fields
.field private mHandleState:Lcom/android/mms/transaction/TransactionService$HandleState;

.field private mIsCalling:Z

.field private mMainState:Lcom/android/mms/transaction/TransactionService$MainState;

.field private mManager:Lcom/android/mms/transaction/TransactionManager;

.field private mNetworkManager:Lcom/android/mms/transaction/NetworkManager;

.field private mNumApnConnectionFailures:I

.field private mOnDestroyCalled:Z

.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;

.field private final mProcessing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryScheduler:Lcom/android/mms/transaction/RetryScheduler;

.field private mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 117
    const-string v0, "Mms:transaction"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    .line 245
    sput v1, Lcom/android/mms/transaction/TransactionService;->MAX_NUM_APN_CONNECTION_FAILURES:I

    .line 267
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/transaction/TransactionService;->mWakeId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 252
    iput v1, p0, Lcom/android/mms/transaction/TransactionService;->mNumApnConnectionFailures:I

    .line 264
    sget-object v0, Lcom/android/mms/transaction/TransactionService$MainState;->INIT:Lcom/android/mms/transaction/TransactionService$MainState;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mMainState:Lcom/android/mms/transaction/TransactionService$MainState;

    .line 265
    sget-object v0, Lcom/android/mms/transaction/TransactionService$HandleState;->INIT:Lcom/android/mms/transaction/TransactionService$HandleState;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandleState:Lcom/android/mms/transaction/TransactionService$HandleState;

    .line 266
    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mOnDestroyCalled:Z

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    .line 1681
    return-void
.end method

.method private abortProcessing(ZLcom/android/mms/transaction/Transaction$Failure;)V
    .locals 7
    .param p1, "waitAbort"    # Z
    .param p2, "reason"    # Lcom/android/mms/transaction/Transaction$Failure;

    .prologue
    .line 951
    sget-boolean v3, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 952
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

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/Transaction;

    .line 958
    .local v2, "t":Lcom/android/mms/transaction/Transaction;
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

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    if-nez p1, :cond_1

    .line 962
    invoke-virtual {v2}, Lcom/android/mms/transaction/Transaction;->removeObservers()V

    .line 965
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/android/mms/transaction/Transaction;->abortTransaction(Lcom/android/mms/transaction/Transaction$Failure;Z)V

    goto :goto_0

    .line 967
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "t":Lcom/android/mms/transaction/Transaction;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "TransactionService"

    const-string v4, "MMS-STATUS - Exception while aborting transaction: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 972
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 967
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
    .line 114
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/TransactionService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->processPendingDatabaseOperations(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/NetworkManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mNetworkManager:Lcom/android/mms/transaction/NetworkManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mNumApnConnectionFailures:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/android/mms/transaction/TransactionService;->mNumApnConnectionFailures:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->handleConnectivityStarted()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->hasTransactions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->ignoreApnFailure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isPermanentAPNFailure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->hasPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction$Failure;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # Lcom/android/mms/transaction/Transaction$Failure;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->hasProcessing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->showData()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/transaction/TransactionService;ZLcom/android/mms/transaction/Transaction$Failure;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/mms/transaction/Transaction$Failure;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/TransactionService;->abortProcessing(ZLcom/android/mms/transaction/Transaction$Failure;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction$Failure;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # Lcom/android/mms/transaction/Transaction$Failure;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->resumeTransaction(Lcom/android/mms/transaction/Transaction$Failure;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/transaction/TransactionService;ILcom/android/mms/transaction/TransactionBundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/mms/transaction/TransactionBundle;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/TransactionService;->handleCreateTransaction(ILcom/android/mms/transaction/TransactionBundle;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/transaction/TransactionService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->finishIfNeeded(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/mms/transaction/TransactionService;ILcom/android/mms/transaction/Transaction$Failure;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/mms/transaction/Transaction$Failure;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/TransactionService;->finishService(ILcom/android/mms/transaction/Transaction$Failure;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->discardPending()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/transaction/TransactionService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->isDuplicate(Lcom/android/mms/transaction/Transaction;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mIsCalling:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->addToPending(Lcom/android/mms/transaction/Transaction;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mIsCalling:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->moveToProcessing(Lcom/android/mms/transaction/Transaction;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mManager:Lcom/android/mms/transaction/TransactionManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$MainState;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mMainState:Lcom/android/mms/transaction/TransactionService$MainState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$HandleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandleState:Lcom/android/mms/transaction/TransactionService$HandleState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionService$HandleState;)Lcom/android/mms/transaction/TransactionService$HandleState;
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;
    .param p1, "x1"    # Lcom/android/mms/transaction/TransactionService$HandleState;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->mHandleState:Lcom/android/mms/transaction/TransactionService$HandleState;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mOnDestroyCalled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/TransactionService;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 4

    .prologue
    .line 1350
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1351
    :try_start_0
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1352
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

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1360
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1361
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 1362
    const-string v0, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireWakeLock done, held="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->scheduleWakeLockExpiry()V

    .line 1371
    :cond_2
    monitor-exit v1

    .line 1372
    return-void

    .line 1371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addToPending(Lcom/android/mms/transaction/Transaction;)V
    .locals 3

    .prologue
    .line 1672
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1673
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    return-void
.end method

.method private checkDatabaseLater(IJ)V
    .locals 4

    .prologue
    .line 1150
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1151
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 1155
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 1156
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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayed(IIJ)V

    .line 1163
    return-void
.end method

.method private checkPendingIfNecessary()V
    .locals 4

    .prologue
    .line 534
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 535
    const-string v0, "TransactionService"

    const-string v1, "checkPendingIfNecessary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 542
    const-string v0, "TransactionService"

    const-string v1, "Start timer to check pending transactions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayed(IJ)V

    .line 547
    return-void
.end method

.method private createTransaction(ILcom/android/mms/transaction/TransactionBundle;)Lcom/android/mms/transaction/Transaction;
    .locals 14
    .param p1, "serviceId"    # I
    .param p2, "txnBundle"    # Lcom/android/mms/transaction/TransactionBundle;

    .prologue
    .line 847
    sget-boolean v11, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v11, :cond_0

    .line 848
    const-string v11, "TransactionService"

    const-string v12, "createTransaction"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_0
    const/4 v7, 0x0

    .line 852
    .local v7, "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    const/4 v5, 0x0

    .line 857
    .local v5, "transaction":Lcom/android/mms/transaction/Transaction;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v2

    .line 858
    .local v2, "mmsc":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 859
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

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    new-instance v8, Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getProxyPort()I

    move-result v12

    invoke-direct {v8, v2, v11, v12}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .end local v7    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    .local v8, "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    move-object v7, v8

    .line 882
    .end local v8    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    .restart local v7    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 932
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

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    const/4 v5, 0x0

    .line 944
    .end local v2    # "mmsc":Ljava/lang/String;
    :goto_1
    sget-boolean v11, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v11, :cond_2

    .line 945
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

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_2
    return-object v5

    .line 865
    .restart local v2    # "mmsc":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSecondaryMmscEnabled()Z

    move-result v11

    if-nez v11, :cond_4

    .line 866
    sget-boolean v11, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v11, :cond_1

    .line 867
    const-string v11, "TransactionService"

    const-string v12, "Transaction Bundle with no mmsc filled"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 937
    .end local v2    # "mmsc":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 938
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

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 941
    invoke-direct {p0, v5}, Lcom/android/mms/transaction/TransactionService;->deleteTransaction(Lcom/android/mms/transaction/Transaction;)V

    goto :goto_1

    .line 874
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "mmsc":Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v8, Lcom/android/mms/transaction/TransactionSettings;

    sget-object v11, Lcom/android/mms/transaction/TransactionSettings$RetrieveType;->ANY:Lcom/android/mms/transaction/TransactionSettings$RetrieveType;

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, p0, v11, v12, v13}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings$RetrieveType;Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    .restart local v8    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    move-object v7, v8

    .end local v8    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    .restart local v7    # "transactionSettings":Lcom/android/mms/transaction/TransactionSettings;
    goto :goto_0

    .line 884
    :pswitch_0
    sget-boolean v11, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v11, :cond_5

    .line 885
    const-string v11, "TransactionService"

    const-string v12, "NOTIFICATION_TRANSACTION"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v10

    .line 888
    .local v10, "uri":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 889
    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService;->mManager:Lcom/android/mms/transaction/TransactionManager;

    invoke-virtual {v11, p0, p1, v7, v10}, Lcom/android/mms/transaction/TransactionManager;->createNotificationTransaction(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)Lcom/android/mms/transaction/NotificationTransaction;

    move-result-object v5

    goto :goto_1

    .line 894
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getPushData()[B

    move-result-object v4

    .line 895
    .local v4, "pushData":[B
    new-instance v3, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 896
    .local v3, "parser":Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    .line 898
    .local v1, "ind":Lcom/google/android/mms/pdu/GenericPdu;
    const/16 v9, 0x82

    .line 899
    .local v9, "type":I
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v11

    if-ne v11, v9, :cond_7

    .line 900
    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService;->mManager:Lcom/android/mms/transaction/TransactionManager;

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v1    # "ind":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v11, p0, p1, v7, v1}, Lcom/android/mms/transaction/TransactionManager;->createNotificationTransaction(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)Lcom/android/mms/transaction/NotificationTransaction;

    move-result-object v5

    goto/16 :goto_1

    .line 904
    .restart local v1    # "ind":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_7
    const-string v11, "TransactionService"

    const-string v12, "MMS-STATUS - Invalid PUSH data."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 910
    .end local v1    # "ind":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v3    # "parser":Lcom/google/android/mms/pdu/PduParser;
    .end local v4    # "pushData":[B
    .end local v9    # "type":I
    .end local v10    # "uri":Ljava/lang/String;
    :pswitch_1
    sget-boolean v11, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v11, :cond_8

    .line 911
    const-string v11, "TransactionService"

    const-string v12, "RETRIEVE_TRANSACTION"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_8
    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService;->mManager:Lcom/android/mms/transaction/TransactionManager;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, p0, p1, v7, v12}, Lcom/android/mms/transaction/TransactionManager;->createRetrieveTransaction(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)Lcom/android/mms/transaction/RetrieveTransaction;

    move-result-object v5

    .line 916
    goto/16 :goto_1

    .line 918
    :pswitch_2
    sget-boolean v11, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v11, :cond_9

    .line 919
    const-string v11, "TransactionService"

    const-string v12, "SEND_TRANSACTION"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_9
    new-instance v6, Lcom/android/mms/transaction/SendTransaction;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, p0, p1, v7, v11}, Lcom/android/mms/transaction/SendTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v5    # "transaction":Lcom/android/mms/transaction/Transaction;
    .local v6, "transaction":Lcom/android/mms/transaction/Transaction;
    move-object v5, v6

    .line 923
    .end local v6    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v5    # "transaction":Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_1

    .line 925
    :pswitch_3
    sget-boolean v11, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v11, :cond_a

    .line 926
    const-string v11, "TransactionService"

    const-string v12, "READREC_TRANSACTION"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_a
    new-instance v6, Lcom/android/mms/transaction/ReadRecTransaction;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, p0, p1, v7, v11}, Lcom/android/mms/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v5    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v6    # "transaction":Lcom/android/mms/transaction/Transaction;
    move-object v5, v6

    .line 930
    .end local v6    # "transaction":Lcom/android/mms/transaction/Transaction;
    .restart local v5    # "transaction":Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_1

    .line 882
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
    .line 1335
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 1336
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1337
    sget v1, Lcom/android/mms/transaction/TransactionService;->mWakeId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/mms/transaction/TransactionService;->mWakeId:I

    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-Connectivity-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/transaction/TransactionService;->mWakeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1339
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1340
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1341
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1342
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

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_0
    return-void
.end method

.method private deleteTransaction(Lcom/android/mms/transaction/Transaction;)V
    .locals 3

    .prologue
    .line 1518
    if-eqz p1, :cond_1

    .line 1520
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 1521
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1522
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1525
    :cond_0
    monitor-exit v1

    .line 1534
    :cond_1
    :goto_0
    return-void

    .line 1525
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

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    :try_start_3
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Unexpected Throwable."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1531
    :catchall_1
    move-exception v0

    throw v0
.end method

.method private discardPending()V
    .locals 5

    .prologue
    .line 1043
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1044
    const-string v0, "TransactionService"

    const-string v1, "discardPending"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1050
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1051
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    .line 1052
    sget-boolean v2, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 1053
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

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1058
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

    .line 1059
    return-void
.end method

.method private discardProcessing()V
    .locals 5

    .prologue
    .line 1012
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1013
    const-string v0, "TransactionService"

    const-string v1, "discardProcessing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1021
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    .line 1022
    sget-boolean v2, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 1023
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

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_1
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mRetryScheduler:Lcom/android/mms/transaction/RetryScheduler;

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 1032
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/TransactionService;->deleteTransaction(Lcom/android/mms/transaction/Transaction;)V

    goto :goto_0

    .line 1034
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Exception while discarding transactions "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    :goto_1
    return-void

    .line 1034
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

    .line 551
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->getNetworkRestriction()Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    move-result-object v0

    .line 556
    .local v0, "restriction":Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;
    sget-object v2, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_AIRPLANE_MODE:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    if-ne v0, v2, :cond_1

    .line 557
    sget-boolean v2, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 558
    const-string v2, "TransactionService"

    const-string v3, "MMS-STATUS - Airplane was turned on, stop service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->AIRPLANE_MODE:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-direct {p0, p1, v2}, Lcom/android/mms/transaction/TransactionService;->finishService(ILcom/android/mms/transaction/Transaction$Failure;)V

    .line 596
    :goto_0
    return v1

    .line 568
    :cond_1
    sget-object v2, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_DATA_DISABLED:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    if-ne v0, v2, :cond_3

    .line 569
    sget-boolean v2, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_2

    .line 570
    const-string v2, "TransactionService"

    const-string v3, "MMS-STATUS - Data was disabled, stop service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_2
    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->DATA_DISABLED:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-direct {p0, p1, v2}, Lcom/android/mms/transaction/TransactionService;->finishService(ILcom/android/mms/transaction/Transaction$Failure;)V

    goto :goto_0

    .line 580
    :cond_3
    sget-object v2, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_NETWORK_UNAVAILABLE:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    if-ne v0, v2, :cond_6

    .line 581
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->isConnectivityReady()Z

    move-result v2

    if-nez v2, :cond_4

    .line 584
    const-string v2, "TransactionService"

    const-string v3, "MMS-STATUS - Ignore MMS Network availability - Connectivity is not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 587
    :cond_4
    sget-boolean v2, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_5

    .line 588
    const-string v2, "TransactionService"

    const-string v3, "MMS-STATUS - Network unavailable, stop service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_5
    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->NETWORK_AVAILABILITY:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-direct {p0, p1, v2}, Lcom/android/mms/transaction/TransactionService;->finishService(ILcom/android/mms/transaction/Transaction$Failure;)V

    goto :goto_0

    .line 596
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private finishService(ILcom/android/mms/transaction/Transaction$Failure;)V
    .locals 4

    .prologue
    .line 1104
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1105
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/Transaction$Failure;->NONE:Lcom/android/mms/transaction/Transaction$Failure;

    if-eq p2, v0, :cond_4

    .line 1115
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->hasProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    sget-object v0, Lcom/android/mms/transaction/Transaction$Failure;->NETWORK_AVAILABILITY:Lcom/android/mms/transaction/Transaction$Failure;

    if-eq p2, v0, :cond_1

    .line 1117
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/mms/transaction/TransactionService;->abortProcessing(ZLcom/android/mms/transaction/Transaction$Failure;)V

    .line 1125
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->hasPending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1126
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/TransactionService;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V

    .line 1127
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0xc

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayed(IJ)V

    .line 1143
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->hasTransactions()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1144
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 1145
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelfNow(I)V

    .line 1147
    :cond_3
    return-void

    .line 1138
    :cond_4
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mRetryScheduler:Lcom/android/mms/transaction/RetryScheduler;

    invoke-virtual {v0}, Lcom/android/mms/transaction/RetryScheduler;->restartNextRetryAlarm()V

    goto :goto_0
.end method

.method private getMaxNumOfStarts()I
    .locals 1

    .prologue
    .line 386
    const/4 v0, -0x1

    return v0
.end method

.method private getStartType(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 338
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.android.mms.intent.SEND_MMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    const/4 v1, 0x6

    .line 382
    :goto_0
    return v1

    .line 345
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "com.motorola.messaging.ACTION_SERVICE_STATE_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    const/4 v1, 0x3

    goto :goto_0

    .line 351
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "com.motorola.messaging.ACTION_SERVICE_STATE_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    const/4 v1, 0x4

    goto :goto_0

    .line 357
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "com.motorola.messaging.ACTION_APN_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 359
    const/4 v1, 0x7

    goto :goto_0

    .line 362
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "com.motorola.messaging.ACTION_MMS_APN_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 365
    const/16 v1, 0x8

    goto :goto_0

    .line 368
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "android.intent.action.ACTION_ONALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 369
    const/4 v1, 0x5

    goto :goto_0

    .line 373
    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "android.intent.action.ACTION_ON_WAKELOCK_EXPIRY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 374
    const/16 v1, 0x9

    goto :goto_0

    .line 378
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 379
    const/4 v1, 0x2

    goto :goto_0

    .line 382
    :cond_7
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getTransactionType(I)I
    .locals 3
    .param p1, "msgType"    # I

    .prologue
    .line 752
    sparse-switch p1, :sswitch_data_0

    .line 760
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 754
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 756
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 758
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 752
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
    .line 285
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
    .line 1427
    if-eqz p1, :cond_0

    .line 1428
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - Extending MMS connectivity accepted, check again after seconds=30"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->handleConnectivityStarted()V

    .line 1439
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayed(IJ)V

    .line 1441
    return-void

    .line 1432
    :cond_0
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - MMS already active"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleApnSwitchAccepted()V
    .locals 4

    .prologue
    .line 1444
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1445
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - Request to start MMS connectivity accepted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x7

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayed(IJ)V

    .line 1451
    return-void
.end method

.method private handleConnectivityStarted()V
    .locals 2

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->cancel(I)V

    .line 2184
    return-void
.end method

.method private handleCreateTransaction(ILcom/android/mms/transaction/TransactionBundle;)V
    .locals 7
    .param p1, "startId"    # I
    .param p2, "txnBundle"    # Lcom/android/mms/transaction/TransactionBundle;

    .prologue
    .line 780
    sget-boolean v1, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 781
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCreateTransaction - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/TransactionService;->createTransaction(ILcom/android/mms/transaction/TransactionBundle;)Lcom/android/mms/transaction/Transaction;

    move-result-object v0

    .line 786
    .local v0, "transaction":Lcom/android/mms/transaction/Transaction;
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v2

    .line 787
    if-eqz v0, :cond_2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/TransactionService;->isDuplicate(Lcom/android/mms/transaction/Transaction;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 791
    sget-boolean v1, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 792
    const-string v1, "TransactionService"

    const-string v3, "Cancel timer to check pending transactions"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->cancel(I)V

    .line 797
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/TransactionService;->addToPending(Lcom/android/mms/transaction/Transaction;)V

    .line 799
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v0}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v3

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayed(IIJ)V

    .line 802
    :cond_2
    monitor-exit v2

    .line 803
    return-void

    .line 802
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasPending()Z
    .locals 2

    .prologue
    .line 1090
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

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

    .line 1093
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
    .line 1083
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1084
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

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

    .line 1085
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
    .line 1098
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1099
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->hasProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->hasPending()Z

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

    .line 1100
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

    .line 2154
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->isOnCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2157
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Ignore switch failure since voice call is connected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    :goto_0
    return v0

    .line 2162
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->isConnectivityReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2164
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Ignore switch failure, Connectivity is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDuplicate(Lcom/android/mms/transaction/Transaction;)Z
    .locals 7
    .param p1, "transaction"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    const/4 v2, 0x1

    .line 806
    sget-boolean v3, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 807
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDuplicate - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_0
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v3

    .line 811
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/Transaction;

    .line 812
    .local v1, "t":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v1, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 813
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

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v4

    if-nez v4, :cond_2

    .line 822
    check-cast v1, Lcom/android/mms/transaction/NotificationTransaction;

    .end local v1    # "t":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v1}, Lcom/android/mms/transaction/NotificationTransaction;->forceDownload()V

    .line 824
    :cond_2
    monitor-exit v3

    .line 841
    :goto_0
    return v2

    .line 828
    :cond_3
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/Transaction;

    .line 829
    .restart local v1    # "t":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v1, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 830
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

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    monitor-exit v3

    goto :goto_0

    .line 836
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lcom/android/mms/transaction/Transaction;
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

    .line 838
    sget-boolean v2, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_6

    .line 839
    const-string v2, "TransactionService"

    const-string v3, "isDuplicate - false"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isNoFailure(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 748
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
    .line 2173
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mNumApnConnectionFailures:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mNumApnConnectionFailures:I

    .line 2174
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mNumApnConnectionFailures:I

    sget v1, Lcom/android/mms/transaction/TransactionService;->MAX_NUM_APN_CONNECTION_FAILURES:I

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
    .line 744
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchTransaction(ILcom/android/mms/transaction/TransactionBundle;)V
    .locals 6
    .param p1, "startId"    # I
    .param p2, "txnBundle"    # Lcom/android/mms/transaction/TransactionBundle;

    .prologue
    .line 766
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 767
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchTransaction - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v3, 0xb

    const-wide/16 v4, 0x0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayedNoCancel(ILjava/lang/Object;IJ)V

    .line 776
    return-void
.end method

.method private moveToProcessing(Lcom/android/mms/transaction/Transaction;)V
    .locals 3

    .prologue
    .line 1659
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1660
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1665
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    return-void
.end method

.method private notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V
    .locals 6

    .prologue
    .line 1062
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1063
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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    .line 1071
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

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-virtual {v0, p1}, Lcom/android/mms/transaction/Transaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V

    goto :goto_0

    .line 1074
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Exception while failing transaction: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1079
    :goto_1
    return-void

    .line 1074
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
    .line 601
    sget-boolean v17, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_0

    .line 602
    const-string v17, "TransactionService"

    const-string v18, "processPendingDatabaseOperations"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService;->finishIfNeeded(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 724
    :goto_0
    return-void

    .line 611
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 613
    .local v6, "current":J
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v8

    .line 615
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 619
    .local v12, "numPendingMsg":I
    :goto_1
    :try_start_0
    sget-boolean v17, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_2

    .line 620
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

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->checkPendingIfNecessary()V

    .line 634
    if-nez v12, :cond_5

    .line 635
    sget-boolean v17, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_3

    .line 636
    const-string v17, "TransactionService"

    const-string v18, "MMS-STATUS - No pending messages on database"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_3
    sget-object v17, Lcom/android/mms/transaction/Transaction$Failure;->NONE:Lcom/android/mms/transaction/Transaction$Failure;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->finishService(ILcom/android/mms/transaction/Transaction$Failure;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 615
    .end local v12    # "numPendingMsg":I
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 644
    .restart local v12    # "numPendingMsg":I
    :cond_5
    :try_start_1
    sget-boolean v17, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_6

    .line 645
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

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_6
    const-string v17, "msg_id"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 652
    .local v4, "columnIndexOfMsgId":I
    const-string v17, "msg_type"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 655
    .local v5, "columnIndexOfMsgType":I
    :cond_7
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 656
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 657
    .local v11, "msgType":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v15

    .line 658
    .local v15, "transactionType":I
    const-string v17, "err_type"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 660
    .local v10, "failureType":I
    const-string v17, "due_time"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 663
    .local v13, "retryAt":J
    sget-boolean v17, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_8

    .line 664
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

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_8
    packed-switch v15, :pswitch_data_0

    .line 705
    :cond_9
    :pswitch_0
    sget-object v17, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 707
    .local v16, "uri":Landroid/net/Uri;
    new-instance v3, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v15, v0}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 710
    .local v3, "args":Lcom/android/mms/transaction/TransactionBundle;
    sget-boolean v17, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_a

    .line 711
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

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 722
    .end local v3    # "args":Lcom/android/mms/transaction/TransactionBundle;
    .end local v4    # "columnIndexOfMsgId":I
    .end local v5    # "columnIndexOfMsgType":I
    .end local v10    # "failureType":I
    .end local v11    # "msgType":I
    .end local v13    # "retryAt":J
    .end local v15    # "transactionType":I
    .end local v16    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v17

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v17

    .line 676
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

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 683
    :pswitch_2
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->isPermanentFailure(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 684
    sget-boolean v17, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_7

    .line 685
    const-string v17, "TransactionService"

    const-string v18, "MMS-STATUS - Skip download for MMS with permanent failure"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 689
    :cond_b
    invoke-static {v10}, Lcom/android/mms/transaction/TransactionService;->isNoFailure(I)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService;->mManager:Lcom/android/mms/transaction/TransactionManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionManager;->getDownloadManager()Lcom/android/mms/util/DownloadManager;

    move-result-object v9

    .line 692
    .local v9, "downloadManager":Lcom/android/mms/util/DownloadManager;
    if-eqz v9, :cond_9

    .line 693
    invoke-virtual {v9}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v17

    if-nez v17, :cond_9

    .line 694
    sget-boolean v17, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v17, :cond_7

    .line 695
    const-string v17, "TransactionService"

    const-string v18, "MMS-STATUS - Skip retry for MMS since auto-retry is disabled"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 722
    .end local v9    # "downloadManager":Lcom/android/mms/util/DownloadManager;
    .end local v10    # "failureType":I
    .end local v11    # "msgType":I
    .end local v13    # "retryAt":J
    .end local v15    # "transactionType":I
    :cond_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 674
    nop

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
    .line 1377
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    :try_start_1
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1379
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

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1391
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 1392
    const-string v0, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseWakeLock done, held="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_1
    monitor-exit v1

    .line 1401
    :goto_0
    return-void

    .line 1396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1397
    :catch_0
    move-exception v0

    .line 1398
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Exception while releasing wake lock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resumeTransaction(Lcom/android/mms/transaction/Transaction$Failure;)V
    .locals 6

    .prologue
    .line 975
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 976
    const-string v0, "TransactionService"

    const-string v1, "resumeTransaction START"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    .line 982
    invoke-virtual {v0}, Lcom/android/mms/transaction/Transaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 983
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 984
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mManager:Lcom/android/mms/transaction/TransactionManager;

    invoke-virtual {v3, v0}, Lcom/android/mms/transaction/TransactionManager;->createTransaction(Lcom/android/mms/transaction/Transaction;)Lcom/android/mms/transaction/Transaction;

    move-result-object v3

    .line 985
    if-nez v3, :cond_3

    .line 986
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

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1000
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Exception while resuming transaction: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1006
    :goto_1
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 1007
    const-string v0, "TransactionService"

    const-string v1, "resumeTransaction END"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_2
    return-void

    .line 990
    :cond_3
    :try_start_3
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_4

    .line 991
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

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/TransactionService;->addToPending(Lcom/android/mms/transaction/Transaction;)V

    goto :goto_0

    .line 1000
    :cond_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private scheduleWakeLockExpiry()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1405
    const v0, 0x493e0

    .line 1406
    new-instance v3, Lcom/android/mms/transaction/DefaultRetryScheme;

    invoke-direct {v3, p0, v7}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;I)V

    .line 1407
    const-wide/16 v1, 0x0

    .line 1409
    int-to-long v4, v0

    add-long/2addr v1, v4

    .line 1410
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1411
    new-instance v4, Lcom/android/mms/transaction/DefaultRetryScheme;

    invoke-direct {v4, p0, v0, v7}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;II)V

    .line 1412
    invoke-virtual {v4}, Lcom/android/mms/transaction/DefaultRetryScheme;->getWaitingInterval()J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 1410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1414
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_ON_WAKELOCK_EXPIRY"

    const/4 v4, 0x0

    const-class v5, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v3, v4, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1416
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1418
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1420
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 1421
    const-string v0, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS wake lock alarm set in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_1
    return-void
.end method

.method private showData()V
    .locals 4

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1456
    :goto_0
    sget-boolean v1, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 1457
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data State, state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

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

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_0
    return-void

    .line 1454
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopSelfNow(I)V
    .locals 3
    .param p1, "startId"    # I

    .prologue
    .line 727
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 728
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-THREAD - stopSelf - thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 733
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - Stop service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_1
    if-lez p1, :cond_2

    .line 737
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 741
    :goto_0
    return-void

    .line 739
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->stopSelf()V

    goto :goto_0
.end method

.method private waitConnectivityStartup(IJ)V
    .locals 2
    .param p1, "startId"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayed(IIJ)V

    .line 2180
    return-void
.end method


# virtual methods
.method protected beginMmsConnectivity(Z)Lcom/android/mms/transaction/TransactionService$MMSNetworkState;
    .locals 4

    .prologue
    .line 1466
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1467
    const-string v0, "TransactionService"

    const-string v1, "beginMmsConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->FAILED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    .line 1471
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->showData()V

    .line 1474
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->retrieveAPNMccMnc()V

    .line 1483
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->isOnCall()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1485
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->onDataSuspended()V

    .line 1486
    sget-object v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->SUSPENDED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    .line 1510
    :goto_0
    sget-boolean v1, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 1511
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

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_1
    return-object v0

    .line 1488
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mNetworkManager:Lcom/android/mms/transaction/NetworkManager;

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->getDefaultMMSFeature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/NetworkManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 1492
    if-nez v0, :cond_3

    .line 1493
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->handleApnAlreadyActive(Z)V

    .line 1494
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    .line 1495
    sget-object v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->CONNECTED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    goto :goto_0

    .line 1496
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1497
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->handleApnSwitchAccepted()V

    .line 1498
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    .line 1499
    sget-object v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->IN_PROGRESS:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    goto :goto_0

    .line 1503
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

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    sget-object v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->FAILED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    goto :goto_0
.end method

.method protected endMmsConnectivity()V
    .locals 3

    .prologue
    .line 1537
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - No more transactions, release MMS connection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->cancel(I)V

    .line 1544
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mNetworkManager:Lcom/android/mms/transaction/NetworkManager;

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->getDefaultMMSFeature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/NetworkManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1548
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    .line 1550
    return-void

    .line 1548
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

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
    .line 1202
    sget-object v0, Lcom/android/mms/transaction/TransactionService$MainState;->FINALIZE:Lcom/android/mms/transaction/TransactionService$MainState;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mMainState:Lcom/android/mms/transaction/TransactionService$MainState;

    .line 1204
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1205
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

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1219
    :goto_0
    return-void

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    :try_start_1
    const-string v1, "TransactionService"

    const-string v2, "MMS-STATUS - Exception while finalizing service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1217
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method isConnectivityReady()Z
    .locals 2

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->hasMessages(I)Z

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
    .line 1197
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 291
    sget-object v1, Lcom/android/mms/transaction/TransactionService$MainState;->ON_CREATE:Lcom/android/mms/transaction/TransactionService$MainState;

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mMainState:Lcom/android/mms/transaction/TransactionService$MainState;

    .line 293
    sget-boolean v1, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 294
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

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->createWakeLock()V

    .line 306
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TransactionService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "thread":Landroid/os/HandlerThread;
    sget-boolean v1, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 309
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS-THREAD onCreate, start new thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 314
    sget-object v1, Lcom/android/mms/transaction/TransactionService$HandleState;->STARTED:Lcom/android/mms/transaction/TransactionService$HandleState;

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mHandleState:Lcom/android/mms/transaction/TransactionService$HandleState;

    .line 315
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    .line 316
    new-instance v1, Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;-><init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    .line 318
    new-instance v1, Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;-><init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionService$1;)V

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener:Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;

    .line 319
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 320
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener:Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;

    const/16 v3, 0x61

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 325
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->isOnCall()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mIsCalling:Z

    .line 326
    invoke-static {}, Lcom/android/mms/transaction/TransactionManager;->getInstance()Lcom/android/mms/transaction/TransactionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mManager:Lcom/android/mms/transaction/TransactionManager;

    .line 327
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mManager:Lcom/android/mms/transaction/TransactionManager;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionManager;->setServiceHandler(Landroid/os/Handler;)V

    .line 328
    invoke-static {}, Lcom/android/mms/transaction/RetryScheduler;->getInstance()Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mRetryScheduler:Lcom/android/mms/transaction/RetryScheduler;

    .line 329
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mManager:Lcom/android/mms/transaction/TransactionManager;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionManager;->getNetworkManager()Lcom/android/mms/transaction/NetworkManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mNetworkManager:Lcom/android/mms/transaction/NetworkManager;

    .line 331
    sget-boolean v1, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 332
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS-THREAD onCreate - END, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 1167
    sget-object v0, Lcom/android/mms/transaction/TransactionService$MainState;->ON_DESTROY:Lcom/android/mms/transaction/TransactionService$MainState;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mMainState:Lcom/android/mms/transaction/TransactionService$MainState;

    .line 1169
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1170
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

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

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

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->hasTransactions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - TransactionService exiting with transaction still pending"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->discardPending()V

    .line 1181
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->discardProcessing()V

    .line 1187
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mPhoneStateListener:Lcom/android/mms/transaction/TransactionService$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mOnDestroyCalled:Z

    .line 1191
    sget-object v0, Lcom/android/mms/transaction/TransactionService$HandleState;->QUITTING:Lcom/android/mms/transaction/TransactionService$HandleState;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandleState:Lcom/android/mms/transaction/TransactionService$HandleState;

    .line 1192
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayed(IJ)V

    .line 1193
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, -0x1

    const-wide/16 v7, 0x0

    .line 391
    sget-object v4, Lcom/android/mms/transaction/TransactionService$MainState;->ON_START:Lcom/android/mms/transaction/TransactionService$MainState;

    iput-object v4, p0, Lcom/android/mms/transaction/TransactionService;->mMainState:Lcom/android/mms/transaction/TransactionService$MainState;

    .line 393
    sget-boolean v4, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 394
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

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

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

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start transaction service, app version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getMaxNumOfStarts()I

    move-result v4

    if-eq v4, v9, :cond_2

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getMaxNumOfStarts()I

    move-result v4

    if-le p3, v4, :cond_2

    .line 405
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

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0, p3}, Lcom/android/mms/transaction/TransactionService;->stopSelfNow(I)V

    .line 529
    :cond_1
    :goto_0
    return v11

    .line 412
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->getStartType(Landroid/content/Intent;)I

    move-result v2

    .line 413
    .local v2, "startType":I
    sget-boolean v4, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_3

    .line 414
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

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 523
    :goto_1
    sget-boolean v4, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_1

    .line 524
    const-string v4, "TransactionService"

    const-string v5, "MMS-THREAD - onStartCommand END"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :pswitch_0
    sget-boolean v4, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_4

    .line 422
    const-string v4, "TransactionService"

    const-string v5, "onStart: send mms in background..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 426
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v10, v4}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 428
    .local v1, "push_args":Lcom/android/mms/transaction/TransactionBundle;
    invoke-direct {p0, p3, v1}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;)V

    goto :goto_1

    .line 432
    .end local v1    # "push_args":Lcom/android/mms/transaction/TransactionBundle;
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_1
    sget-boolean v4, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_5

    .line 433
    const-string v4, "TransactionService"

    const-string v5, "onStart: launch transaction..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_5
    new-instance v0, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    .line 436
    .local v0, "args":Lcom/android/mms/transaction/TransactionBundle;
    invoke-direct {p0, p3, v0}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;)V

    goto :goto_1

    .line 440
    .end local v0    # "args":Lcom/android/mms/transaction/TransactionBundle;
    :pswitch_2
    sget-boolean v4, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_6

    .line 441
    const-string v4, "TransactionService"

    const-string v5, "onStart: service off..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_6
    invoke-direct {p0, p3}, Lcom/android/mms/transaction/TransactionService;->finishIfNeeded(I)Z

    goto :goto_1

    .line 453
    :pswitch_3
    sget-boolean v4, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_7

    .line 454
    const-string v4, "TransactionService"

    const-string v5, "onStart: service state on..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getConnectivityWaitTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p3, v4, v5}, Lcom/android/mms/transaction/TransactionService;->waitConnectivityStartup(IJ)V

    .line 475
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInServiceWaitTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, p3, v4, v5}, Lcom/android/mms/transaction/TransactionService;->checkDatabaseLater(IJ)V

    goto :goto_1

    .line 479
    :pswitch_4
    sget-boolean v4, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_8

    .line 480
    const-string v4, "TransactionService"

    const-string v5, "MMS-STATUS - retry alarm expired, check pending messages"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_8
    invoke-direct {p0, p3, v7, v8}, Lcom/android/mms/transaction/TransactionService;->checkDatabaseLater(IJ)V

    goto :goto_1

    .line 488
    :pswitch_5
    sget-boolean v4, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_9

    .line 489
    const-string v4, "TransactionService"

    const-string v5, "MMS-STATUS - APN changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_9
    const-wide/16 v4, 0x2710

    invoke-direct {p0, p3, v4, v5}, Lcom/android/mms/transaction/TransactionService;->checkDatabaseLater(IJ)V

    goto/16 :goto_1

    .line 505
    :pswitch_6
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v4, v10, v7, v8}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayed(IJ)V

    goto/16 :goto_1

    .line 510
    :pswitch_7
    sget-boolean v4, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v4, :cond_a

    .line 511
    const-string v4, "TransactionService"

    const-string v5, "MMS-STATUS Wake lock acquired for max retry time, release it"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_a
    sget-object v4, Lcom/android/mms/transaction/Transaction$Failure;->NONE:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-direct {p0, v9, v4}, Lcom/android/mms/transaction/TransactionService;->finishService(ILcom/android/mms/transaction/Transaction$Failure;)V

    goto/16 :goto_1

    .line 519
    :pswitch_8
    invoke-direct {p0, p3, v7, v8}, Lcom/android/mms/transaction/TransactionService;->checkDatabaseLater(IJ)V

    goto/16 :goto_1

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public startTimeoutForVoiceCall(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 1553
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsTransferTimeoutForVoiceCall()I

    move-result v0

    if-nez v0, :cond_1

    .line 1577
    :cond_0
    :goto_0
    return-void

    .line 1557
    :cond_1
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1562
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->hasProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1568
    :cond_2
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_3

    .line 1569
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-STATUS - Start voice call timeout, timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsTransferTimeoutForVoiceCall()I

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_3
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0x8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsTransferTimeoutForVoiceCall()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayed(IJ)V

    goto :goto_0
.end method

.method public stopTimeoutForVoiceCall()V
    .locals 2

    .prologue
    .line 1580
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsTransferTimeoutForVoiceCall()I

    move-result v0

    if-nez v0, :cond_0

    .line 1589
    :goto_0
    return-void

    .line 1584
    :cond_0
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 1585
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - Stop voice call timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->cancel(I)V

    goto :goto_0
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 8

    .prologue
    .line 1226
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1227
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_0
    check-cast p1, Lcom/android/mms/transaction/Transaction;

    .line 1231
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v0

    .line 1232
    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v1

    .line 1234
    sget-object v2, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v1, v2, :cond_8

    .line 1235
    sget-boolean v2, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 1236
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

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1248
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1249
    sget-boolean v3, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v3, :cond_2

    .line 1250
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

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_2
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1256
    sget-boolean v3, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v3, :cond_3

    .line 1257
    const-string v3, "TransactionService"

    const-string v4, "MMS-STATUS - Process next pending transaction"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_3
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v4, 0x4

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayed(IIJ)V

    .line 1265
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1267
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1270
    const-string v3, "state"

    invoke-virtual {v1}, Lcom/android/mms/transaction/Transaction$State;->ordinal()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1272
    sget-object v3, Lcom/android/mms/transaction/TransactionService$1;->$SwitchMap$com$android$mms$transaction$Transaction$State:[I

    invoke-virtual {v1}, Lcom/android/mms/transaction/Transaction$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1311
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

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_5
    :goto_1
    :pswitch_0
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_6

    .line 1318
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

    invoke-virtual {v1}, Lcom/android/mms/transaction/Transaction$State;->ordinal()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/TransactionService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1325
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v0

    .line 1326
    invoke-virtual {p1, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 1327
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->hasTransactions()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1328
    sget-object v1, Lcom/android/mms/transaction/Transaction$Failure;->NONE:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/transaction/TransactionService;->finishService(ILcom/android/mms/transaction/Transaction$Failure;)V

    .line 1331
    :cond_7
    return-void

    .line 1240
    :cond_8
    sget-boolean v2, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 1241
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

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1265
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

    .line 1325
    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v1

    .line 1326
    invoke-virtual {p1, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 1327
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->hasTransactions()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1328
    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->NONE:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-direct {p0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->finishService(ILcom/android/mms/transaction/Transaction$Failure;)V

    .line 1330
    :cond_9
    throw v0

    .line 1274
    :pswitch_1
    :try_start_5
    const-string v3, "uri"

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1277
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 1282
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v3

    .line 1285
    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1286
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.mms.MMS_RECEIVED_ACTION"

    invoke-direct {v5, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1287
    const-string v6, "uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1288
    const-string v0, "tid"

    invoke-virtual {v5, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1289
    const-string v0, "android.permission.RECEIVE_MMS"

    invoke-virtual {p0, v5, v0}, Lcom/android/mms/transaction/TransactionService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1291
    const/4 v0, 0x0

    invoke-static {p0, v3, v4, v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1294
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 1295
    sget-boolean v0, Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z

    if-eqz v0, :cond_5

    .line 1296
    const-string v0, "TransactionService"

    const-string v3, "MMS-STATUS - MMS is fully received"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1301
    :pswitch_3
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/RateController;->update()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 1272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1277
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
