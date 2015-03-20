.class final Lcom/motorola/blur/util/os/IntervalWorker$InternalRunnable;
.super Ljava/lang/Object;
.source "IntervalWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/util/os/IntervalWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InternalRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/util/os/IntervalWorker;


# direct methods
.method constructor <init>(Lcom/motorola/blur/util/os/IntervalWorker;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/motorola/blur/util/os/IntervalWorker$InternalRunnable;->this$0:Lcom/motorola/blur/util/os/IntervalWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/blur/util/os/IntervalWorker$InternalRunnable;->this$0:Lcom/motorola/blur/util/os/IntervalWorker;

    invoke-virtual {v0}, Lcom/motorola/blur/util/os/IntervalWorker;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/motorola/blur/util/os/IntervalWorker$InternalRunnable;->this$0:Lcom/motorola/blur/util/os/IntervalWorker;

    invoke-virtual {v0}, Lcom/motorola/blur/util/os/IntervalWorker;->work()V

    .line 34
    iget-object v0, p0, Lcom/motorola/blur/util/os/IntervalWorker$InternalRunnable;->this$0:Lcom/motorola/blur/util/os/IntervalWorker;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/util/os/IntervalWorker;->postRunnable(Ljava/lang/Runnable;)Z

    .line 36
    :cond_0
    return-void
.end method
