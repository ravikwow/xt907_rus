.class public Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;
.super Ljava/lang/Object;
.source "BlurSyncWSProxyFactory.java"


# static fields
.field private static mInstance:Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;->mInstance:Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;->mInstance:Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;

    .line 20
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;->mInstance:Lcom/motorola/blur/service/blur/sync/ws/BlurSyncWSProxyFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBlurSyncWSProxy(Landroid/content/Context;)Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    new-instance v0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;

    invoke-direct {v0, p1}, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
