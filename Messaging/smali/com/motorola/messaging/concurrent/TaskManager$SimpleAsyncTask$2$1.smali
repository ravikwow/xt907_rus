.class Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2$1;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2$1;->this$1:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2$1;->this$1:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;

    iget-object v0, v0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;->this$0:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;

    invoke-virtual {v0}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->onPostExecute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2$1;->this$1:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;

    iget-object v0, v0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;->this$0:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;

    # setter for: Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mIsFinished:Z
    invoke-static {v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->access$302(Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;Z)Z

    .line 413
    return-void

    .line 411
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2$1;->this$1:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;

    iget-object v1, v1, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask$2;->this$0:Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;

    # setter for: Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->mIsFinished:Z
    invoke-static {v1, v2}, Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;->access$302(Lcom/motorola/messaging/concurrent/TaskManager$SimpleAsyncTask;Z)Z

    throw v0
.end method
