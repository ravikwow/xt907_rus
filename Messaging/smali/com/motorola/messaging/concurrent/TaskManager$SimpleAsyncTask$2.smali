.class Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;->this$0:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 406
    new-instance v0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2$1;-><init>(Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;)V

    .line 416
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;->this$0:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;

    # getter for: Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mUiThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->access$400(Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;)Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 417
    iget-object v1, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;->this$0:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;

    # getter for: Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->access$500(Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
