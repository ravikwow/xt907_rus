.class Lcom/motorola/messaging/concurrent/TaskStack$1;
.super Landroid/os/Handler;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/concurrent/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/concurrent/TaskStack;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/concurrent/TaskStack;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/motorola/messaging/concurrent/TaskStack$1;->this$0:Lcom/motorola/messaging/concurrent/TaskStack;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 30
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 31
    iget-object v2, p0, Lcom/motorola/messaging/concurrent/TaskStack$1;->this$0:Lcom/motorola/messaging/concurrent/TaskStack;

    # getter for: Lcom/motorola/messaging/concurrent/TaskStack;->mQueuedThingsToLoad:Ljava/util/Stack;
    invoke-static {v2}, Lcom/motorola/messaging/concurrent/TaskStack;->access$000(Lcom/motorola/messaging/concurrent/TaskStack;)Ljava/util/Stack;

    move-result-object v2

    # invokes: Lcom/motorola/messaging/concurrent/TaskStack;->dumpStack(Ljava/util/Stack;)V
    invoke-static {v2}, Lcom/motorola/messaging/concurrent/TaskStack;->access$100(Ljava/util/Stack;)V

    .line 32
    iget-object v2, p0, Lcom/motorola/messaging/concurrent/TaskStack$1;->this$0:Lcom/motorola/messaging/concurrent/TaskStack;

    # getter for: Lcom/motorola/messaging/concurrent/TaskStack;->mThingsToLoad:Ljava/util/Stack;
    invoke-static {v2}, Lcom/motorola/messaging/concurrent/TaskStack;->access$200(Lcom/motorola/messaging/concurrent/TaskStack;)Ljava/util/Stack;

    move-result-object v3

    monitor-enter v3

    .line 33
    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/concurrent/TaskStack$1;->this$0:Lcom/motorola/messaging/concurrent/TaskStack;

    # getter for: Lcom/motorola/messaging/concurrent/TaskStack;->mQueuedThingsToLoad:Ljava/util/Stack;
    invoke-static {v2}, Lcom/motorola/messaging/concurrent/TaskStack;->access$000(Lcom/motorola/messaging/concurrent/TaskStack;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;

    .line 34
    .local v1, "req":Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;
    iget-object v2, p0, Lcom/motorola/messaging/concurrent/TaskStack$1;->this$0:Lcom/motorola/messaging/concurrent/TaskStack;

    # getter for: Lcom/motorola/messaging/concurrent/TaskStack;->mThingsToLoad:Ljava/util/Stack;
    invoke-static {v2}, Lcom/motorola/messaging/concurrent/TaskStack;->access$200(Lcom/motorola/messaging/concurrent/TaskStack;)Ljava/util/Stack;

    move-result-object v2

    invoke-interface {v1}, Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;->getRunnable()Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "req":Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    iget-object v2, p0, Lcom/motorola/messaging/concurrent/TaskStack$1;->this$0:Lcom/motorola/messaging/concurrent/TaskStack;

    # getter for: Lcom/motorola/messaging/concurrent/TaskStack;->mQueuedThingsToLoad:Ljava/util/Stack;
    invoke-static {v2}, Lcom/motorola/messaging/concurrent/TaskStack;->access$000(Lcom/motorola/messaging/concurrent/TaskStack;)Ljava/util/Stack;

    move-result-object v3

    monitor-enter v3

    .line 38
    :try_start_2
    iget-object v2, p0, Lcom/motorola/messaging/concurrent/TaskStack$1;->this$0:Lcom/motorola/messaging/concurrent/TaskStack;

    # getter for: Lcom/motorola/messaging/concurrent/TaskStack;->mQueuedThingsToLoad:Ljava/util/Stack;
    invoke-static {v2}, Lcom/motorola/messaging/concurrent/TaskStack;->access$000(Lcom/motorola/messaging/concurrent/TaskStack;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 39
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/concurrent/TaskStack$1;->this$0:Lcom/motorola/messaging/concurrent/TaskStack;

    # getter for: Lcom/motorola/messaging/concurrent/TaskStack;->mPopStackRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/motorola/messaging/concurrent/TaskStack;->access$300(Lcom/motorola/messaging/concurrent/TaskStack;)Ljava/lang/Runnable;

    move-result-object v3

    const-string v4, "fetch_contacts"

    invoke-virtual {v2, v3, v4}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 42
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void

    .line 39
    .restart local v0    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
