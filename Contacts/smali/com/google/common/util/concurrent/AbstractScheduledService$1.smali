.class Lcom/google/common/util/concurrent/AbstractScheduledService$1;
.super Lcom/google/common/util/concurrent/AbstractService;
.source "AbstractScheduledService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile runningTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final task:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService;)V
    .locals 1

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;-><init>()V

    .line 163
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 165
    new-instance v0, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1$1;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->task:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/common/util/concurrent/AbstractScheduledService$1;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractScheduledService$1;
    .param p1, "x1"    # Ljava/util/concurrent/Future;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->runningTask:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractScheduledService$1;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->task:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method protected final doStop()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->runningTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 206
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$1$3;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method
