.class public abstract Lcom/motorola/blur/util/os/ReschedulableTimer;
.super Ljava/lang/Object;
.source "ReschedulableTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mExecutorService:Ljava/util/concurrent/ExecutorService;

.field mScheduled:Z

.field mTimeToRun:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/motorola/blur/util/os/ReschedulableTimer;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 31
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()Z
    .locals 2

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/blur/util/os/ReschedulableTimer;->mScheduled:Z

    .line 61
    .local v0, "wasScheduled":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/blur/util/os/ReschedulableTimer;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return v0

    .line 60
    .end local v0    # "wasScheduled":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected abstract execute()V
.end method

.method protected declared-synchronized isScheduled()Z
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/blur/util/os/ReschedulableTimer;->mScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 80
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 81
    .local v0, "now":J
    monitor-enter p0

    .line 82
    :try_start_0
    iget-boolean v6, p0, Lcom/motorola/blur/util/os/ReschedulableTimer;->mScheduled:Z

    if-nez v6, :cond_0

    .line 83
    monitor-exit p0

    .line 101
    :goto_1
    return-void

    .line 85
    :cond_0
    iget-wide v6, p0, Lcom/motorola/blur/util/os/ReschedulableTimer;->mTimeToRun:J

    sub-long v3, v6, v0

    .line 86
    .local v3, "timeRemaining":J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gtz v6, :cond_2

    const/4 v2, 0x1

    .line 87
    .local v2, "runNow":Z
    :goto_2
    if-eqz v2, :cond_1

    .line 88
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/motorola/blur/util/os/ReschedulableTimer;->mScheduled:Z

    .line 90
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-eqz v2, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/motorola/blur/util/os/ReschedulableTimer;->execute()V

    goto :goto_1

    .end local v2    # "runNow":Z
    :cond_2
    move v2, v5

    .line 86
    goto :goto_2

    .line 90
    .end local v3    # "timeRemaining":J
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 96
    .restart local v2    # "runNow":Z
    .restart local v3    # "timeRemaining":J
    :cond_3
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public declared-synchronized runAfter(J)V
    .locals 2
    .param p1, "delayToRunMs"    # J

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/util/os/ReschedulableTimer;->runAt(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized runAt(J)V
    .locals 2
    .param p1, "timeToRun"    # J

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/blur/util/os/ReschedulableTimer;->mTimeToRun:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 47
    iput-wide p1, p0, Lcom/motorola/blur/util/os/ReschedulableTimer;->mTimeToRun:J

    .line 49
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/blur/util/os/ReschedulableTimer;->mScheduled:Z

    if-nez v0, :cond_1

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/util/os/ReschedulableTimer;->mScheduled:Z

    .line 51
    iget-object v0, p0, Lcom/motorola/blur/util/os/ReschedulableTimer;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
