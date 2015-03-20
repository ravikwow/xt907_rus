.class public Lcom/motorola/blur/util/service/InterfaceBinderThread;
.super Ljava/lang/Thread;
.source "InterfaceBinderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/util/service/InterfaceBinderThread$BinderCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/motorola/blur/util/service/InterfaceBinderThread$BinderCallback;

.field private mIBind:Landroid/os/IBinder;

.field private mServiceBinder:Lcom/motorola/blur/util/service/ServiceBinder;

.field private mTimeoutSeconds:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    new-instance v0, Lcom/motorola/blur/util/service/ServiceBinder;

    invoke-direct {v0, p1, p2}, Lcom/motorola/blur/util/service/ServiceBinder;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/motorola/blur/util/service/InterfaceBinderThread;->mServiceBinder:Lcom/motorola/blur/util/service/ServiceBinder;

    .line 53
    return-void
.end method


# virtual methods
.method public declared-synchronized bind(ILcom/motorola/blur/util/service/InterfaceBinderThread$BinderCallback;)V
    .locals 2
    .param p1, "timeoutSeconds"    # I
    .param p2, "callback"    # Lcom/motorola/blur/util/service/InterfaceBinderThread$BinderCallback;

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/blur/util/service/InterfaceBinderThread;->mTimeoutSeconds:I

    .line 63
    if-nez p2, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 66
    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/motorola/blur/util/service/InterfaceBinderThread;->mCallback:Lcom/motorola/blur/util/service/InterfaceBinderThread$BinderCallback;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/util/service/InterfaceBinderThread;->mServiceBinder:Lcom/motorola/blur/util/service/ServiceBinder;

    iget v1, p0, Lcom/motorola/blur/util/service/InterfaceBinderThread;->mTimeoutSeconds:I

    invoke-virtual {v0, v1}, Lcom/motorola/blur/util/service/ServiceBinder;->bind(I)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/util/service/InterfaceBinderThread;->mIBind:Landroid/os/IBinder;

    .line 81
    iget-object v0, p0, Lcom/motorola/blur/util/service/InterfaceBinderThread;->mCallback:Lcom/motorola/blur/util/service/InterfaceBinderThread$BinderCallback;

    iget-object v1, p0, Lcom/motorola/blur/util/service/InterfaceBinderThread;->mIBind:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/motorola/blur/util/service/InterfaceBinderThread$BinderCallback;->onBind(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unbind()V
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/util/service/InterfaceBinderThread;->mServiceBinder:Lcom/motorola/blur/util/service/ServiceBinder;

    invoke-virtual {v0}, Lcom/motorola/blur/util/service/ServiceBinder;->unbind()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/util/service/InterfaceBinderThread;->mIBind:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
