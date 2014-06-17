.class Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;


# direct methods
.method constructor <init>(Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;->this$0:Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 407
    new-instance v0, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2$1;

    invoke-direct {v0, p0}, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2$1;-><init>(Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;)V

    .line 417
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;->this$0:Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;

    # getter for: Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;->mUiThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;->access$400(Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;)Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;->this$0:Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;

    # getter for: Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;->access$500(Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
