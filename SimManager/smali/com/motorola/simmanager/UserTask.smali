.class public abstract Lcom/motorola/simmanager/UserTask;
.super Ljava/lang/Object;
.source "UserTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/simmanager/UserTask$4;,
        Lcom/motorola/simmanager/UserTask$UserTaskResult;,
        Lcom/motorola/simmanager/UserTask$WorkerRunnable;,
        Lcom/motorola/simmanager/UserTask$InternalHandler;,
        Lcom/motorola/simmanager/UserTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sHandler:Lcom/motorola/simmanager/UserTask$InternalHandler;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/motorola/simmanager/UserTask$Status;

.field private final mWorker:Lcom/motorola/simmanager/UserTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/simmanager/UserTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v2, 0xa

    .line 143
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/motorola/simmanager/UserTask;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 146
    new-instance v0, Lcom/motorola/simmanager/UserTask$1;

    invoke-direct {v0}, Lcom/motorola/simmanager/UserTask$1;-><init>()V

    sput-object v0, Lcom/motorola/simmanager/UserTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 154
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/motorola/simmanager/UserTask;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/motorola/simmanager/UserTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/motorola/simmanager/UserTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 162
    new-instance v0, Lcom/motorola/simmanager/UserTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/simmanager/UserTask$InternalHandler;-><init>(Lcom/motorola/simmanager/UserTask$1;)V

    sput-object v0, Lcom/motorola/simmanager/UserTask;->sHandler:Lcom/motorola/simmanager/UserTask$InternalHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 192
    .local p0, "this":Lcom/motorola/simmanager/UserTask;, "Lcom/motorola/simmanager/UserTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    sget-object v0, Lcom/motorola/simmanager/UserTask$Status;->PENDING:Lcom/motorola/simmanager/UserTask$Status;

    iput-object v0, p0, Lcom/motorola/simmanager/UserTask;->mStatus:Lcom/motorola/simmanager/UserTask$Status;

    .line 193
    new-instance v0, Lcom/motorola/simmanager/UserTask$2;

    invoke-direct {v0, p0}, Lcom/motorola/simmanager/UserTask$2;-><init>(Lcom/motorola/simmanager/UserTask;)V

    iput-object v0, p0, Lcom/motorola/simmanager/UserTask;->mWorker:Lcom/motorola/simmanager/UserTask$WorkerRunnable;

    .line 200
    new-instance v0, Lcom/motorola/simmanager/UserTask$3;

    iget-object v1, p0, Lcom/motorola/simmanager/UserTask;->mWorker:Lcom/motorola/simmanager/UserTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/motorola/simmanager/UserTask$3;-><init>(Lcom/motorola/simmanager/UserTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/motorola/simmanager/UserTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 231
    return-void
.end method

.method static synthetic access$200()Lcom/motorola/simmanager/UserTask$InternalHandler;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/motorola/simmanager/UserTask;->sHandler:Lcom/motorola/simmanager/UserTask$InternalHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/simmanager/UserTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/UserTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/motorola/simmanager/UserTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Lcom/motorola/simmanager/UserTask;, "Lcom/motorola/simmanager/UserTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0, p1}, Lcom/motorola/simmanager/UserTask;->onPostExecute(Ljava/lang/Object;)V

    .line 447
    sget-object v0, Lcom/motorola/simmanager/UserTask$Status;->FINISHED:Lcom/motorola/simmanager/UserTask$Status;

    iput-object v0, p0, Lcom/motorola/simmanager/UserTask;->mStatus:Lcom/motorola/simmanager/UserTask$Status;

    .line 448
    return-void
.end method


# virtual methods
.method public varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/motorola/simmanager/UserTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/motorola/simmanager/UserTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lcom/motorola/simmanager/UserTask;, "Lcom/motorola/simmanager/UserTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/motorola/simmanager/UserTask;->mStatus:Lcom/motorola/simmanager/UserTask$Status;

    sget-object v1, Lcom/motorola/simmanager/UserTask$Status;->PENDING:Lcom/motorola/simmanager/UserTask$Status;

    if-eq v0, v1, :cond_0

    .line 407
    sget-object v0, Lcom/motorola/simmanager/UserTask$4;->$SwitchMap$com$motorola$simmanager$UserTask$Status:[I

    iget-object v1, p0, Lcom/motorola/simmanager/UserTask;->mStatus:Lcom/motorola/simmanager/UserTask$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 418
    :cond_0
    sget-object v0, Lcom/motorola/simmanager/UserTask$Status;->RUNNING:Lcom/motorola/simmanager/UserTask$Status;

    iput-object v0, p0, Lcom/motorola/simmanager/UserTask;->mStatus:Lcom/motorola/simmanager/UserTask$Status;

    .line 420
    invoke-virtual {p0}, Lcom/motorola/simmanager/UserTask;->onPreExecute()V

    .line 422
    iget-object v0, p0, Lcom/motorola/simmanager/UserTask;->mWorker:Lcom/motorola/simmanager/UserTask$WorkerRunnable;

    iput-object p1, v0, Lcom/motorola/simmanager/UserTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/motorola/simmanager/UserTask;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/motorola/simmanager/UserTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 425
    return-object p0

    .line 409
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCancelled()V
    .locals 0

    .prologue
    .line 308
    .local p0, "this":Lcom/motorola/simmanager/UserTask;, "Lcom/motorola/simmanager/UserTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lcom/motorola/simmanager/UserTask;, "Lcom/motorola/simmanager/UserTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 268
    .local p0, "this":Lcom/motorola/simmanager/UserTask;, "Lcom/motorola/simmanager/UserTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lcom/motorola/simmanager/UserTask;, "Lcom/motorola/simmanager/UserTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "this":Lcom/motorola/simmanager/UserTask;, "Lcom/motorola/simmanager/UserTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    sget-object v0, Lcom/motorola/simmanager/UserTask;->sHandler:Lcom/motorola/simmanager/UserTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/motorola/simmanager/UserTask$UserTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/motorola/simmanager/UserTask$UserTaskResult;-><init>(Lcom/motorola/simmanager/UserTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 443
    return-void
.end method
