.class public Lcom/motorola/blur/util/service/ServiceBinder;
.super Ljava/lang/Object;
.source "ServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field static final TAG:Ljava/lang/String; = "ServiceBinder"


# instance fields
.field mBinding:Z

.field mBoundCount:I

.field mContext:Landroid/content/Context;

.field mIntent:Landroid/content/Intent;

.field mTarget:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mIntent:Landroid/content/Intent;

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized bind(I)Landroid/os/IBinder;
    .locals 5
    .param p1, "timeoutSeconds"    # I

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mBoundCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 54
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mBinding:Z

    .line 55
    iget-object v1, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 56
    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 57
    iget-object v1, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mTarget:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 58
    const-string v1, "ServiceBinder"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Timeout in binding to service: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mIntent:Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    :cond_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mBinding:Z

    .line 66
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mTarget:Landroid/os/IBinder;

    if-eqz v1, :cond_2

    .line 67
    iget v1, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mBoundCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mBoundCount:I

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mTarget:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "ServiceBinder"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Interrupted in binding to service: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mIntent:Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mBinding:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 63
    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mBinding:Z

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mBinding:Z

    if-eqz v0, :cond_0

    .line 93
    iput-object p2, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mTarget:Landroid/os/IBinder;

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 99
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mTarget:Landroid/os/IBinder;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mBoundCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unbind()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mBoundCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mBoundCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mBoundCount:I

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mTarget:Landroid/os/IBinder;

    .line 83
    iget-object v0, p0, Lcom/motorola/blur/util/service/ServiceBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
