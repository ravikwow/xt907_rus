.class Lcom/google/common/eventbus/SynchronizedEventHandler;
.super Lcom/google/common/eventbus/EventHandler;
.source "SynchronizedEventHandler.java"


# virtual methods
.method public declared-synchronized handleEvent(Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/google/common/eventbus/EventHandler;->handleEvent(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
