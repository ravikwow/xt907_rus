.class public Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerFactory;
.super Ljava/lang/Object;
.source "SyncProtocolHandlerFactory.java"


# static fields
.field private static mInstance:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerFactory;
    .locals 2

    .prologue
    .line 15
    const-class v1, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerFactory;->mInstance:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerFactory;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerFactory;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerFactory;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerFactory;->mInstance:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerFactory;

    .line 18
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerFactory;->mInstance:Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public createTwoWaySyncBlurProtocolHandler(Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;I)Lcom/motorola/blur/service/blur/sync/handler/AbstractBlurSyncProtocolHandler;
    .locals 1
    .param p1, "helper"    # Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;
    .param p2, "syncTaskTimeoutInSecs"    # I

    .prologue
    .line 30
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;

    invoke-direct {v0, p1, p2}, Lcom/motorola/blur/service/blur/sync/handler/impl/BlurSyncProtocolHandler;-><init>(Lcom/motorola/blur/service/blur/sync/handler/IMediatorHelper;I)V

    return-object v0
.end method
