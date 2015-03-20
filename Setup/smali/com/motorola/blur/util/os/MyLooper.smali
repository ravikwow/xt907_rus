.class public Lcom/motorola/blur/util/os/MyLooper;
.super Ljava/lang/Object;
.source "MyLooper.java"


# static fields
.field private static sLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized singleton()Landroid/os/Looper;
    .locals 4

    .prologue
    .line 27
    const-class v2, Lcom/motorola/blur/util/os/MyLooper;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/motorola/blur/util/os/MyLooper;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 28
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/motorola/blur/util/os/MyLooper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 30
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/motorola/blur/util/os/MyLooper;->sLooper:Landroid/os/Looper;

    .line 33
    :cond_0
    sget-object v1, Lcom/motorola/blur/util/os/MyLooper;->sLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized singleton(I)Landroid/os/Looper;
    .locals 3
    .param p0, "priority"    # I

    .prologue
    .line 37
    const-class v2, Lcom/motorola/blur/util/os/MyLooper;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/motorola/blur/util/os/MyLooper;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/motorola/blur/util/os/MyLooper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 39
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/motorola/blur/util/os/MyLooper;->sLooper:Landroid/os/Looper;

    .line 42
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    sget-object v1, Lcom/motorola/blur/util/os/MyLooper;->sLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
