.class public abstract Lcom/motorola/blur/util/os/IntervalWorker;
.super Ljava/lang/Object;
.source "IntervalWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/util/os/IntervalWorker$InternalRunnable;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInterval:J

.field private final mRunnable:Lcom/motorola/blur/util/os/IntervalWorker$InternalRunnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/motorola/blur/util/os/IntervalWorker$InternalRunnable;

    invoke-direct {v0, p0}, Lcom/motorola/blur/util/os/IntervalWorker$InternalRunnable;-><init>(Lcom/motorola/blur/util/os/IntervalWorker;)V

    iput-object v0, p0, Lcom/motorola/blur/util/os/IntervalWorker;->mRunnable:Lcom/motorola/blur/util/os/IntervalWorker$InternalRunnable;

    .line 44
    return-void
.end method


# virtual methods
.method public declared-synchronized isRunning()Z
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/util/os/IntervalWorker;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized postRunnable(Ljava/lang/Runnable;)Z
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/blur/util/os/IntervalWorker;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/motorola/blur/util/os/IntervalWorker;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/motorola/blur/util/os/IntervalWorker;->mInterval:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/motorola/blur/util/os/IntervalWorker;->stop()V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/util/os/IntervalWorker;->isRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Landroid/os/Handler;J)Z
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "interval"    # J

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/util/os/IntervalWorker;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 65
    iput-object p1, p0, Lcom/motorola/blur/util/os/IntervalWorker;->mHandler:Landroid/os/Handler;

    .line 66
    iput-wide p2, p0, Lcom/motorola/blur/util/os/IntervalWorker;->mInterval:J

    .line 67
    iget-object v0, p0, Lcom/motorola/blur/util/os/IntervalWorker;->mRunnable:Lcom/motorola/blur/util/os/IntervalWorker$InternalRunnable;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/util/os/IntervalWorker;->postRunnable(Ljava/lang/Runnable;)Z

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/util/os/IntervalWorker;->isRunning()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/blur/util/os/IntervalWorker;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/motorola/blur/util/os/IntervalWorker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/blur/util/os/IntervalWorker;->mRunnable:Lcom/motorola/blur/util/os/IntervalWorker$InternalRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/util/os/IntervalWorker;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract work()V
.end method
