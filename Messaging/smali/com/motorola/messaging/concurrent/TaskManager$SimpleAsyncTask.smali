.class public abstract Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/concurrent/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleAsyncTask"
.end annotation


# instance fields
.field private mBackGroundRunnable:Ljava/lang/Runnable;

.field private mBackGroundTask:Lcom/motorola/messaging/concurrent/TaskManager$Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/messaging/concurrent/TaskManager$Task",
            "<*>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsFinished:Z

.field private mPostExecuteRunnable:Ljava/lang/Runnable;

.field private mType:I

.field private mUiThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "type"    # I

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    new-instance v0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$1;-><init>(Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;)V

    iput-object v0, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mBackGroundRunnable:Ljava/lang/Runnable;

    .line 404
    new-instance v0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;-><init>(Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;)V

    iput-object v0, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mPostExecuteRunnable:Ljava/lang/Runnable;

    .line 378
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mUiThread:Ljava/lang/Thread;

    .line 379
    iput-object p1, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mHandler:Landroid/os/Handler;

    .line 380
    iput p2, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mType:I

    .line 381
    return-void
.end method

.method static synthetic access$302(Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
    .param p1, "x1"    # Z

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mIsFinished:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mUiThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public blockUntilFinish()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mBackGroundTask:Lcom/motorola/messaging/concurrent/TaskManager$Task;

    invoke-virtual {v0}, Lcom/motorola/messaging/concurrent/TaskManager$Task;->blockUntilFinish()V

    .line 396
    return-void
.end method

.method protected abstract doInBackground()V
.end method

.method public execute(Ljava/lang/String;)V
    .locals 4
    .param p1, "taskName"    # Ljava/lang/String;

    .prologue
    .line 439
    new-instance v0, Lcom/motorola/messaging/concurrent/TaskManager$Task;

    iget-object v1, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mBackGroundRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mType:I

    const-string v3, "BG"

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/motorola/messaging/concurrent/TaskManager$Task;-><init>(Ljava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mBackGroundTask:Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 440
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mBackGroundTask:Lcom/motorola/messaging/concurrent/TaskManager$Task;

    iget-object v1, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mPostExecuteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/concurrent/TaskManager$Task;->setPostRunnable(Ljava/lang/Runnable;)V

    .line 441
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mBackGroundTask:Lcom/motorola/messaging/concurrent/TaskManager$Task;

    const-string v1, "BG"

    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v2

    # getter for: Lcom/motorola/messaging/concurrent/TaskManager;->mBackgroundPriorityPool:Lcom/motorola/messaging/concurrent/TaskManager$BackgroundExecutor;
    invoke-static {v2}, Lcom/motorola/messaging/concurrent/TaskManager;->access$100(Lcom/motorola/messaging/concurrent/TaskManager;)Lcom/motorola/messaging/concurrent/TaskManager$BackgroundExecutor;

    move-result-object v2

    # invokes: Lcom/motorola/messaging/concurrent/TaskManager;->runTask(Lcom/motorola/messaging/concurrent/TaskManager$Task;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V
    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->access$600(Lcom/motorola/messaging/concurrent/TaskManager$Task;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 442
    return-void
.end method

.method protected abstract onPostExecute()V
.end method
