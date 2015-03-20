.class public Lcom/motorola/messaging/concurrent/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/concurrent/TaskManager$Task;,
        Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;,
        Lcom/motorola/messaging/concurrent/TaskManager$BackgroundExecutor;
    }
.end annotation


# static fields
.field private static final LOCAL_LOG:Z

.field private static final mInstance:Lcom/motorola/messaging/concurrent/TaskManager;

.field private static sConflictTable:[[I


# instance fields
.field private mBackgroundPriorityPool:Lcom/motorola/messaging/concurrent/TaskManager$BackgroundExecutor;

.field private mHighPriorityPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mLowPriorityPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/concurrent/TaskManager;->LOCAL_LOG:Z

    .line 60
    new-instance v0, Lcom/motorola/messaging/concurrent/TaskManager;

    invoke-direct {v0}, Lcom/motorola/messaging/concurrent/TaskManager;-><init>()V

    sput-object v0, Lcom/motorola/messaging/concurrent/TaskManager;->mInstance:Lcom/motorola/messaging/concurrent/TaskManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 26

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v9, Lcom/motorola/messaging/concurrent/TaskManager$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/motorola/messaging/concurrent/TaskManager$1;-><init>(Lcom/motorola/messaging/concurrent/TaskManager;)V

    .line 78
    .local v9, "lowPriorityFactory":Ljava/util/concurrent/ThreadFactory;
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/messaging/concurrent/TaskManager;->mLowPriorityPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 82
    new-instance v17, Lcom/motorola/messaging/concurrent/TaskManager$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager$2;-><init>(Lcom/motorola/messaging/concurrent/TaskManager;)V

    .line 91
    .local v17, "backgroundPriorityFactory":Ljava/util/concurrent/ThreadFactory;
    new-instance v10, Lcom/motorola/messaging/concurrent/TaskManager$BackgroundExecutor;

    const/4 v11, 0x2

    const/4 v12, 0x2

    const-wide/16 v13, 0x1

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v10 .. v17}, Lcom/motorola/messaging/concurrent/TaskManager$BackgroundExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/motorola/messaging/concurrent/TaskManager;->mBackgroundPriorityPool:Lcom/motorola/messaging/concurrent/TaskManager$BackgroundExecutor;

    .line 95
    new-instance v25, Lcom/motorola/messaging/concurrent/TaskManager$3;

    invoke-direct/range {v25 .. v26}, Lcom/motorola/messaging/concurrent/TaskManager$3;-><init>(Lcom/motorola/messaging/concurrent/TaskManager;)V

    .line 104
    .local v25, "highPriorityFactory":Ljava/util/concurrent/ThreadFactory;
    new-instance v18, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v19, 0x1

    const v20, 0x7fffffff

    const-wide/16 v21, 0x1

    sget-object v23, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v24, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v24 .. v24}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-direct/range {v18 .. v25}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/messaging/concurrent/TaskManager;->mHighPriorityPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 108
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->initTaskConflictTable()V

    .line 109
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/motorola/messaging/concurrent/TaskManager;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/concurrent/TaskManager;)Lcom/motorola/messaging/concurrent/TaskManager$BackgroundExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/concurrent/TaskManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskManager;->mBackgroundPriorityPool:Lcom/motorola/messaging/concurrent/TaskManager$BackgroundExecutor;

    return-object v0
.end method

.method static synthetic access$200()[[I
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/motorola/messaging/concurrent/TaskManager;->sConflictTable:[[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/messaging/concurrent/TaskManager$Task;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/concurrent/TaskManager$Task;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 20
    invoke-static {p0, p1, p2}, Lcom/motorola/messaging/concurrent/TaskManager;->runTask(Lcom/motorola/messaging/concurrent/TaskManager$Task;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public static getInstance()Lcom/motorola/messaging/concurrent/TaskManager;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/motorola/messaging/concurrent/TaskManager;->mInstance:Lcom/motorola/messaging/concurrent/TaskManager;

    return-object v0
.end method

.method private static initTaskConflictTable()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    const/4 v0, 0x5

    new-array v0, v0, [[I

    sput-object v0, Lcom/motorola/messaging/concurrent/TaskManager;->sConflictTable:[[I

    .line 123
    sget-object v0, Lcom/motorola/messaging/concurrent/TaskManager;->sConflictTable:[[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 124
    sget-object v0, Lcom/motorola/messaging/concurrent/TaskManager;->sConflictTable:[[I

    new-array v1, v4, [I

    aput v5, v1, v3

    aput-object v1, v0, v4

    .line 125
    sget-object v0, Lcom/motorola/messaging/concurrent/TaskManager;->sConflictTable:[[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    .line 126
    sget-object v0, Lcom/motorola/messaging/concurrent/TaskManager;->sConflictTable:[[I

    new-array v1, v3, [I

    aput-object v1, v0, v5

    .line 127
    sget-object v0, Lcom/motorola/messaging/concurrent/TaskManager;->sConflictTable:[[I

    const/4 v1, 0x4

    new-array v2, v4, [I

    aput v4, v2, v3

    aput-object v2, v0, v1

    .line 128
    return-void

    .line 125
    :array_0
    .array-data 4
        0x1
        0x4
    .end array-data
.end method

.method private static isAlreadyInPool(Ljava/lang/String;)Z
    .locals 5
    .param p0, "poolTag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 224
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "currentThreadName":Ljava/lang/String;
    sget-boolean v2, Lcom/motorola/messaging/concurrent/TaskManager;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 227
    const-string v2, "TaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAlreadyInPool - Pool:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Current Thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    const-string v2, "BG"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    const-string v2, "BackGround"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    :cond_1
    :goto_0
    return v1

    .line 234
    :cond_2
    const-string v2, "LOW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 235
    const-string v2, "LowPriority"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 238
    :cond_4
    const-string v2, "HighPriority"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    const-string v2, "HighPriority"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method private runTask(Ljava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)Lcom/motorola/messaging/concurrent/TaskManager$Task;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "taskName"    # Ljava/lang/String;
    .param p3, "taskType"    # I
    .param p4, "poolTag"    # Ljava/lang/String;
    .param p5, "pool"    # Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ")",
            "Lcom/motorola/messaging/concurrent/TaskManager$Task",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lcom/motorola/messaging/concurrent/TaskManager$Task;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/motorola/messaging/concurrent/TaskManager$Task;-><init>(Ljava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    .local v0, "task":Lcom/motorola/messaging/concurrent/TaskManager$Task;, "Lcom/motorola/messaging/concurrent/TaskManager$Task<Ljava/lang/Object;>;"
    invoke-static {v0, p4, p5}, Lcom/motorola/messaging/concurrent/TaskManager;->runTask(Lcom/motorola/messaging/concurrent/TaskManager$Task;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 210
    return-object v0
.end method

.method private runTask(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)Lcom/motorola/messaging/concurrent/TaskManager$Task;
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "taskName"    # Ljava/lang/String;
    .param p3, "poolTag"    # Ljava/lang/String;
    .param p4, "pool"    # Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ")",
            "Lcom/motorola/messaging/concurrent/TaskManager$Task",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 201
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/concurrent/TaskManager;->runTask(Ljava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    move-result-object v0

    return-object v0
.end method

.method private static runTask(Lcom/motorola/messaging/concurrent/TaskManager$Task;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1
    .param p1, "poolTag"    # Ljava/lang/String;
    .param p2, "pool"    # Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/messaging/concurrent/TaskManager$Task",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "task":Lcom/motorola/messaging/concurrent/TaskManager$Task;, "Lcom/motorola/messaging/concurrent/TaskManager$Task<*>;"
    invoke-static {p1}, Lcom/motorola/messaging/concurrent/TaskManager;->isAlreadyInPool(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/motorola/messaging/concurrent/TaskManager$Task;->run()V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method


# virtual methods
.method public hasConflict(I)Z
    .locals 1
    .param p1, "taskType"    # I

    .prologue
    .line 197
    invoke-static {p1}, Lcom/motorola/messaging/concurrent/TaskManager$BackgroundExecutor;->hasConflict(I)Z

    move-result v0

    return v0
.end method

.method public runBackgroundTask(Ljava/lang/Runnable;ILjava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "type"    # I
    .param p3, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/motorola/messaging/concurrent/TaskManager$Task",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 188
    const-string v4, "BG"

    iget-object v5, p0, Lcom/motorola/messaging/concurrent/TaskManager;->mBackgroundPriorityPool:Lcom/motorola/messaging/concurrent/TaskManager$BackgroundExecutor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/concurrent/TaskManager;->runTask(Ljava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    move-result-object v0

    return-object v0
.end method

.method public runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            ")",
            "Lcom/motorola/messaging/concurrent/TaskManager$Task",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 174
    const-string v0, "BG"

    iget-object v1, p0, Lcom/motorola/messaging/concurrent/TaskManager;->mBackgroundPriorityPool:Lcom/motorola/messaging/concurrent/TaskManager$BackgroundExecutor;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager;->runTask(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    move-result-object v0

    return-object v0
.end method

.method public runHighPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "taskName"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v0, "HIGH"

    iget-object v1, p0, Lcom/motorola/messaging/concurrent/TaskManager;->mHighPriorityPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager;->runTask(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 162
    return-void
.end method

.method public runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "taskName"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v0, "LOW"

    iget-object v1, p0, Lcom/motorola/messaging/concurrent/TaskManager;->mLowPriorityPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager;->runTask(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 148
    return-void
.end method
