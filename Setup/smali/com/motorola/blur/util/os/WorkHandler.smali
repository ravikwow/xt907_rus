.class public final Lcom/motorola/blur/util/os/WorkHandler;
.super Ljava/lang/Object;
.source "WorkHandler.java"


# instance fields
.field private mCreateStack:Ljava/lang/Throwable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/motorola/blur/util/os/WorkHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    iget-object v0, p0, Lcom/motorola/blur/util/os/WorkHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/blur/util/os/WorkHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/blur/util/os/WorkHandler;->mHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "threadName"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/motorola/blur/util/os/WorkHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 63
    iget-object v0, p0, Lcom/motorola/blur/util/os/WorkHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/blur/util/os/WorkHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/blur/util/os/WorkHandler;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/util/os/WorkHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/motorola/blur/util/os/WorkHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/util/os/WorkHandler;->mHandler:Landroid/os/Handler;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/util/os/WorkHandler;->mCreateStack:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/motorola/blur/util/os/WorkHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "WorkHandler"

    iget-object v1, p0, Lcom/motorola/blur/util/os/WorkHandler;->mCreateStack:Ljava/lang/Throwable;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "WorkHandler.close() not called."

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 127
    invoke-virtual {p0}, Lcom/motorola/blur/util/os/WorkHandler;->close()V

    .line 129
    :cond_0
    return-void
.end method

.method public declared-synchronized getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/util/os/WorkHandler;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/motorola/blur/util/os/WorkHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 102
    .local v0, "h":Landroid/os/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/motorola/blur/util/os/WorkHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 86
    .local v0, "h":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v1, "WorkHandler"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "WorkHandler.post() null handler; post ignored. Runnable="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
