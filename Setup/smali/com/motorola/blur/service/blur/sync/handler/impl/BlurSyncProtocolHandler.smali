.class public Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;
.super Lcom/motorola/blur/service/blur/sync/handler/AbstractBlurSyncProtocolHandler;
.source "BlurSyncProtocolHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$ProtocolTask;
    }
.end annotation


# static fields
.field private static final CORE_THREADS:I = 0x1

.field private static final KEEP_ALIVE_TIME:I = 0x0

.field private static final MAX_THREADS:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TERMINATION_TIMEOUT_SECS:I = 0x5


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

.field private volatile mIsBatchingProhibited:Z

.field private mLock:Ljava/lang/Object;

.field private final mPrefsProhibitBatchingKey:Ljava/lang/String;

.field private final mSyncAppId:I

.field private final mSyncTaskTimeoutInSecs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;I)V
    .locals 11
    .param p1, "helper"    # Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;
    .param p2, "syncTaskTimeoutInSecs"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 54
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/sync/handler/AbstractBlurSyncProtocolHandler;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mCurrentTask:Ljava/util/concurrent/Future;

    .line 51
    iput-boolean v10, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mIsBatchingProhibited:Z

    .line 56
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/motorola/blur/util/concurrent/BlurThreadFactory;

    const-string v2, "BlurSyncProtocolHandlerPool"

    const/16 v8, 0xa

    invoke-direct {v7, v2, v8}, Lcom/motorola/blur/util/concurrent/BlurThreadFactory;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$1;

    invoke-direct {v8, p0}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$1;-><init>(Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;)V

    move v2, v1

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 65
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    .line 66
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v0}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->syncAppID()I

    move-result v0

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mSyncAppId:I

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.motorola.blur.sync.app.SharedPrefs.PROHIBIT_BATCHING_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mSyncAppId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mPrefsProhibitBatchingKey:Ljava/lang/String;

    .line 69
    iput p2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mSyncTaskTimeoutInSecs:I

    .line 70
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mContext:Landroid/content/Context;

    const-string v1, "com.motorola.blur.sync.app.prefs"

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 72
    .local v9, "prefs":Landroid/content/SharedPreferences;
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mPrefsProhibitBatchingKey:Ljava/lang/String;

    invoke-interface {v9, v0, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mIsBatchingProhibited:Z

    .line 74
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mPrefsProhibitBatchingKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mIsBatchingProhibited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;)Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mIsBatchingProhibited:Z

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;

    .prologue
    .line 33
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mSyncTaskTimeoutInSecs:I

    return v0
.end method

.method private createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    .locals 1
    .param p1, "code"    # Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {p1, p2}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->create(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v0

    return-object v0
.end method

.method private createResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    .locals 1
    .param p1, "code"    # Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-static {p1, p2}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->create(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowBatchedUpdates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mContext:Landroid/content/Context;

    const-string v2, "com.motorola.blur.sync.app.prefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mPrefsProhibitBatchingKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    iput-boolean v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mIsBatchingProhibited:Z

    .line 108
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync app id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mSyncAppId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " allowing batched updates"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public areBatchedUpdatesAllowed()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mIsBatchingProhibited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelSync()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 133
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mCurrentTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mCurrentTask:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 137
    :cond_0
    monitor-exit v1

    .line 138
    return v3

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cleanup()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 118
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    const-string v2, "Waiting for executor to shutdown."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    const-string v2, "Timeout expired waiting for executor to shutdown."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    const-string v2, "Executor should be shutdown now."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mCurrentTask:Ljava/util/concurrent/Future;

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ie":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public executeSync(Ljava/lang/String;Z)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    .locals 12
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "isForced"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 151
    sget-object v8, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "executeSync: handlerName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isForced: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v7, 0x0

    .line 155
    .local v7, "thisTask":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;>;"
    :try_start_0
    iget-object v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$ProtocolTask;

    invoke-direct {v9, p0, p2}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler$ProtocolTask;-><init>(Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;Z)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 161
    iget-object v9, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 162
    :try_start_1
    iput-object v7, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mCurrentTask:Ljava/util/concurrent/Future;

    .line 163
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :try_start_2
    iget v8, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mSyncTaskTimeoutInSecs:I

    int-to-long v8, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 188
    .local v5, "result":Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    invoke-interface {v7, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .end local v5    # "result":Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :goto_0
    return-object v5

    .line 156
    :catch_0
    move-exception v4

    .line 157
    .local v4, "re":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v8, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    const-string v9, "Tried to submit a sync task when one is already running.  Ignoring."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v8, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_INTERNAL_CLIENT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    const-string v9, "There is already a sync task running."

    invoke-static {v8, v9}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->create(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v5

    goto :goto_0

    .line 163
    .end local v4    # "re":Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 168
    :catch_1
    move-exception v6

    .line 169
    .local v6, "te":Ljava/util/concurrent/TimeoutException;
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timeout in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v9}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->description()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " protocol handler while waiting for sync completion."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "msg":Ljava/lang/String;
    sget-object v8, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v8, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->S_SYNC_TASK_TIMEOUT:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-direct {p0, v8, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    .line 188
    invoke-interface {v7, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 173
    .end local v3    # "msg":Ljava/lang/String;
    .end local v6    # "te":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v0

    .line 174
    .local v0, "ce":Ljava/util/concurrent/CancellationException;
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync protocol for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v9}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->description()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " was canceled."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .restart local v3    # "msg":Ljava/lang/String;
    sget-object v8, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    invoke-static {v8, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    sget-object v8, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->S_CANCELED:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-direct {p0, v8, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->createResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    .line 188
    invoke-interface {v7, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 177
    .end local v0    # "ce":Ljava/util/concurrent/CancellationException;
    .end local v3    # "msg":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 178
    .local v1, "ee":Ljava/util/concurrent/ExecutionException;
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync protocol for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v9}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->description()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " threw an uncaught exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .restart local v3    # "msg":Ljava/lang/String;
    sget-object v8, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v8, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_UNKNOWN:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-direct {p0, v8, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v5

    .line 188
    invoke-interface {v7, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/16 :goto_0

    .line 182
    .end local v1    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v3    # "msg":Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 183
    .local v2, "ie":Ljava/lang/InterruptedException;
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected interruption in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mHelper:Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;

    invoke-interface {v9}, Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;->description()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " while waiting for sync completion."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .restart local v3    # "msg":Ljava/lang/String;
    sget-object v8, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v8, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;->E_UNKNOWN:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;

    invoke-direct {p0, v8, v3}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->createErrorResult(Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode$StatusCode;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v5

    .line 188
    invoke-interface {v7, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/16 :goto_0

    .end local v2    # "ie":Ljava/lang/InterruptedException;
    .end local v3    # "msg":Ljava/lang/String;
    :catchall_1
    move-exception v8

    invoke-interface {v7, v11}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw v8
.end method

.method public isSyncing()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mCurrentTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mCurrentTask:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public prohibitBatchedUpdates()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 79
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mContext:Landroid/content/Context;

    const-string v2, "com.motorola.blur.sync.app.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mPrefsProhibitBatchingKey:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    iput-boolean v4, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mIsBatchingProhibited:Z

    .line 91
    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync app id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;->mSyncAppId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " prohibiting batched updates"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
