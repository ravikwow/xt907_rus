.class public Lcom/motorola/messaging/concurrent/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private final mPopStackRunnable:Ljava/lang/Runnable;

.field private final mQueuedThingsToLoad:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;",
            ">;"
        }
    .end annotation
.end field

.field public mStackHandler:Landroid/os/Handler;

.field private final mThingsToLoad:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEBUG_ALL:Z

    sput-boolean v0, Lcom/motorola/messaging/concurrent/TaskStack;->DEBUG:Z

    .line 13
    sget-boolean v0, Lcom/motorola/messaging/concurrent/TaskStack;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/concurrent/TaskStack;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/motorola/messaging/concurrent/TaskStack$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/concurrent/TaskStack$1;-><init>(Lcom/motorola/messaging/concurrent/TaskStack;)V

    iput-object v0, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mStackHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/motorola/messaging/concurrent/TaskStack$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/concurrent/TaskStack$2;-><init>(Lcom/motorola/messaging/concurrent/TaskStack;)V

    iput-object v0, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mPopStackRunnable:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mThingsToLoad:Ljava/util/Stack;

    .line 47
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mQueuedThingsToLoad:Ljava/util/Stack;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/concurrent/TaskStack;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/concurrent/TaskStack;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mQueuedThingsToLoad:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Stack;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/Stack;

    .prologue
    .line 10
    invoke-static {p0}, Lcom/motorola/messaging/concurrent/TaskStack;->dumpStack(Ljava/util/Stack;)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/messaging/concurrent/TaskStack;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/concurrent/TaskStack;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mThingsToLoad:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/messaging/concurrent/TaskStack;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/concurrent/TaskStack;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mPopStackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static dumpStack(Ljava/util/Stack;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "s":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;>;"
    sget-boolean v2, Lcom/motorola/messaging/concurrent/TaskStack;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 90
    const-string v2, "TaskStack"

    const-string v3, "Dumping:"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "TaskStack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;

    .line 94
    .local v1, "req":Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;
    const-string v2, "TaskStack"

    invoke-interface {v1}, Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "req":Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private hasRequest(Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;)Z
    .locals 6
    .param p1, "r"    # Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;

    .prologue
    .line 101
    iget-object v3, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mQueuedThingsToLoad:Ljava/util/Stack;

    monitor-enter v3

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mQueuedThingsToLoad:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;

    .line 103
    .local v1, "req":Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;
    invoke-interface {v1}, Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    sget-boolean v2, Lcom/motorola/messaging/concurrent/TaskStack;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 105
    const-string v2, "TaskStack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "has Request with id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    const/4 v2, 0x1

    monitor-exit v3

    .line 111
    .end local v1    # "req":Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;
    :goto_0
    return v2

    .line 110
    :cond_2
    monitor-exit v3

    .line 111
    const/4 v2, 0x0

    goto :goto_0

    .line 110
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public push(Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;)V
    .locals 4
    .param p1, "r"    # Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;

    .prologue
    const/16 v3, 0xc8

    .line 72
    invoke-direct {p0, p1}, Lcom/motorola/messaging/concurrent/TaskStack;->hasRequest(Lcom/motorola/messaging/concurrent/TaskStack$TaskRequest;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mStackHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    iget-object v1, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mQueuedThingsToLoad:Ljava/util/Stack;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mQueuedThingsToLoad:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mQueuedThingsToLoad:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    .line 80
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mQueuedThingsToLoad:Ljava/util/Stack;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 82
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/motorola/messaging/concurrent/TaskStack;->mStackHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    :cond_1
    return-void

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
