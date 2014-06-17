.class Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2$1;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;


# direct methods
.method constructor <init>(Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2$1;->this$1:Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2$1;->this$1:Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;

    iget-object v0, v0, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;->this$0:Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;

    invoke-virtual {v0}, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;->onPostExecute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    iget-object v0, p0, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2$1;->this$1:Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;

    iget-object v0, v0, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;->this$0:Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;

    # setter for: Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;->mIsFinished:Z
    invoke-static {v0, v2}, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;->access$302(Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;Z)Z

    .line 414
    return-void

    .line 412
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2$1;->this$1:Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;

    iget-object v1, v1, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask$2;->this$0:Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;

    # setter for: Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;->mIsFinished:Z
    invoke-static {v1, v2}, Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;->access$302(Lcom/android/mms/concurrent/TaskManager$SimpleAsyncTask;Z)Z

    throw v0
.end method
