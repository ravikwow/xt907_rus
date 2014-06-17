.class Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/concurrent/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundExecutor"
.end annotation


# static fields
.field private static mCurrentTaskTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mWaitingConflictQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/mms/concurrent/TaskManager$Task",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mCurrentTaskTypes:Ljava/util/List;

    .line 254
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mWaitingConflictQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 259
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 261
    return-void
.end method

.method private static ensureConsistency(Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;)V
    .locals 7
    .param p0, "executor"    # Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    .line 265
    .local v0, "numQueued":I
    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->getActiveCount()I

    move-result v1

    .line 266
    .local v1, "numRunning":I
    add-int v3, v0, v1

    .line 267
    .local v3, "totalOnExecutor":I
    sget-object v4, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mCurrentTaskTypes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 268
    .local v2, "taskTypeVectorSize":I
    # getter for: Lcom/android/mms/concurrent/TaskManager;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    const-string v4, "TaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "task type vector size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " taks on executor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    if-le v2, v3, :cond_1

    .line 272
    const-string v4, "TaskManager"

    const-string v5, "Inconsistency in Background Pool. Will reset currentTasks vector."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v4, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mCurrentTaskTypes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 275
    :cond_1
    return-void
.end method

.method public static hasConflict(I)Z
    .locals 10
    .param p0, "taskType"    # I

    .prologue
    .line 295
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->getInstance()Lcom/android/mms/concurrent/TaskManager;

    move-result-object v7

    # getter for: Lcom/android/mms/concurrent/TaskManager;->mBackgroundPriorityPool:Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;
    invoke-static {v7}, Lcom/android/mms/concurrent/TaskManager;->access$100(Lcom/android/mms/concurrent/TaskManager;)Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->ensureConsistency(Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;)V

    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, "hasConflict":Z
    sget-object v8, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mCurrentTaskTypes:Ljava/util/List;

    monitor-enter v8

    .line 299
    :try_start_0
    # getter for: Lcom/android/mms/concurrent/TaskManager;->sConflictTable:[[I
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->access$200()[[I

    move-result-object v7

    aget-object v0, v7, p0

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget v1, v0, v4

    .line 301
    .local v1, "conflictingType":I
    sget-object v7, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mCurrentTaskTypes:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 302
    const/4 v2, 0x1

    .line 313
    .end local v1    # "conflictingType":I
    .end local v4    # "i$":I
    :cond_0
    :goto_1
    monitor-exit v8

    .line 314
    return v2

    .line 306
    .restart local v1    # "conflictingType":I
    .restart local v4    # "i$":I
    :cond_1
    sget-object v7, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mWaitingConflictQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/concurrent/TaskManager$Task;

    .line 307
    .local v6, "t":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<*>;"
    invoke-virtual {v6}, Lcom/android/mms/concurrent/TaskManager$Task;->getType()I

    move-result v7

    if-ne v7, v1, :cond_2

    .line 308
    const/4 v2, 0x1

    .line 309
    goto :goto_1

    .line 299
    .end local v6    # "t":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<*>;"
    :cond_3
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 313
    .end local v0    # "arr$":[I
    .end local v1    # "conflictingType":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public static reportFinished(Lcom/android/mms/concurrent/TaskManager$Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/concurrent/TaskManager$Task",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "task":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<*>;"
    sget-object v1, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mCurrentTaskTypes:Ljava/util/List;

    monitor-enter v1

    .line 325
    :try_start_0
    sget-object v0, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mCurrentTaskTypes:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$Task;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 326
    monitor-exit v1

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static reportStarted(Lcom/android/mms/concurrent/TaskManager$Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/concurrent/TaskManager$Task",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "task":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<*>;"
    sget-object v1, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mCurrentTaskTypes:Ljava/util/List;

    monitor-enter v1

    .line 319
    :try_start_0
    sget-object v0, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mWaitingConflictQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 320
    monitor-exit v1

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setConflictingTask(Lcom/android/mms/concurrent/TaskManager$Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/concurrent/TaskManager$Task",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "task":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<*>;"
    sget-object v0, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mWaitingConflictQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    sget-object v0, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mWaitingConflictQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 331
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 333
    if-eqz p2, :cond_0

    .line 334
    const-string v2, "TaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throwable on afterExecute. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    sget-object v3, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mCurrentTaskTypes:Ljava/util/List;

    monitor-enter v3

    .line 339
    :try_start_0
    sget-object v2, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mWaitingConflictQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/concurrent/TaskManager$Task;

    .line 340
    .local v1, "t":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<*>;"
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 341
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 342
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 344
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<*>;"
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 345
    return-void
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    move-object v1, p1

    check-cast v1, Lcom/android/mms/concurrent/TaskManager$Task;

    .line 280
    .local v1, "task":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<*>;"
    sget-object v3, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mCurrentTaskTypes:Ljava/util/List;

    monitor-enter v3

    .line 281
    :try_start_0
    sget-object v2, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->mCurrentTaskTypes:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/mms/concurrent/TaskManager$Task;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 284
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-virtual {v1, v0}, Lcom/android/mms/concurrent/TaskManager$Task;->setFuture(Ljava/util/concurrent/Future;)V

    .line 285
    return-object v0

    .line 282
    .end local v0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
