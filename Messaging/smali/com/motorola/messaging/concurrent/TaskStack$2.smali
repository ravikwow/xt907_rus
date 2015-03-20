.class Lcom/motorola/messaging/concurrent/TaskStack$2;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 50
    iput-object p1, p0, Lcom/motorola/messaging/concurrent/TaskStack$2;->this$0:Lcom/motorola/messaging/concurrent/TaskStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "r":Ljava/lang/Runnable;
    const/4 v2, 0x0

    .line 55
    .local v2, "tempThingsToLoad":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Runnable;>;"
    iget-object v3, p0, Lcom/motorola/messaging/concurrent/TaskStack$2;->this$0:Lcom/motorola/messaging/concurrent/TaskStack;

    # getter for: Lcom/motorola/messaging/concurrent/TaskStack;->mThingsToLoad:Ljava/util/Stack;
    invoke-static {v3}, Lcom/motorola/messaging/concurrent/TaskStack;->access$200(Lcom/motorola/messaging/concurrent/TaskStack;)Ljava/util/Stack;

    move-result-object v4

    monitor-enter v4

    .line 56
    :try_start_0
    iget-object v3, p0, Lcom/motorola/messaging/concurrent/TaskStack$2;->this$0:Lcom/motorola/messaging/concurrent/TaskStack;

    # getter for: Lcom/motorola/messaging/concurrent/TaskStack;->mThingsToLoad:Ljava/util/Stack;
    invoke-static {v3}, Lcom/motorola/messaging/concurrent/TaskStack;->access$200(Lcom/motorola/messaging/concurrent/TaskStack;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/Stack;

    move-object v2, v0

    .line 57
    iget-object v3, p0, Lcom/motorola/messaging/concurrent/TaskStack$2;->this$0:Lcom/motorola/messaging/concurrent/TaskStack;

    # getter for: Lcom/motorola/messaging/concurrent/TaskStack;->mThingsToLoad:Ljava/util/Stack;
    invoke-static {v3}, Lcom/motorola/messaging/concurrent/TaskStack;->access$200(Lcom/motorola/messaging/concurrent/TaskStack;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 58
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_0
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Ljava/lang/Runnable;
    check-cast v1, Ljava/lang/Runnable;

    .line 62
    .restart local v1    # "r":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 65
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 67
    :cond_1
    return-void
.end method
