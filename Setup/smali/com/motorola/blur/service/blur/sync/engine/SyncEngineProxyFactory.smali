.class public Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;
.super Ljava/lang/Object;
.source "SyncEngineProxyFactory.java"


# static fields
.field private static mInstance:Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static createTimingInfo(II)Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .locals 1
    .param p0, "maxIntervalBetweenSyncSessions"    # I
    .param p1, "minIntervalBetweenSyncSessions"    # I

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->create(II)Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;->mInstance:Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;->mInstance:Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;

    .line 23
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;->mInstance:Lcom/motorola/blur/service/blur/sync/engine/SyncEngineProxyFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getProxy(Landroid/content/Context;)Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;

    invoke-direct {v0, p1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
