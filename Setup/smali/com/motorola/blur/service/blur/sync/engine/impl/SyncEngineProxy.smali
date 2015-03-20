.class public Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;
.super Ljava/lang/Object;
.source "SyncEngineProxy.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$1;,
        Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;,
        Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;,
        Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;,
        Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;,
        Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;
    }
.end annotation


# static fields
.field private static final GATEKEEPER_CMD_RESUME_ALL:I = 0x2

.field private static final GATEKEEPER_CMD_RESUME_BY_APP_ID:I = 0x6

.field private static final GATEKEEPER_CMD_RESUME_BY_NAME:I = 0x5

.field private static final GATEKEEPER_CMD_SUSPEND_ALL:I = 0x1

.field private static final GATEKEEPER_CMD_SUSPEND_BY_APP_ID:I = 0x4

.field private static final GATEKEEPER_CMD_SUSPEND_BY_NAME:I = 0x3

.field private static final REGISTRAR_CMD_REGISTER_BLUR_HANDLER:I = 0x1

.field private static final REGISTRAR_CMD_REGISTER_NON_BLUR_HANDLER:I = 0x3

.field private static final REGISTRAR_CMD_REGISTER_UNCACHED_BLUR_HANDLER:I = 0x2

.field private static final REGISTRAR_CMD_SET_EXTRA_DATA_TYPES:I = 0x5

.field private static final REGISTRAR_CMD_UNREGISTER_HANDLER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SyncEngineProxy"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public forceBlurSync(I)Z
    .locals 5
    .param p1, "syncAppId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;IZ)V

    .line 353
    .local v0, "forcer":Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;

    invoke-direct {v3, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public forceBlurSyncNow(I)Z
    .locals 5
    .param p1, "syncAppId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 358
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;

    invoke-direct {v0, p0, p1, v4}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;IZ)V

    .line 359
    .local v0, "forcer":Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;

    invoke-direct {v3, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public forceSync(Ljava/lang/String;)Z
    .locals 5
    .param p1, "handlerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    const-string v1, "SyncEngineProxy"

    const-string v2, "Trying to force sync with a null handler name."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v1, 0x0

    .line 347
    :goto_0
    return v1

    .line 346
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;

    invoke-direct {v0, p0, p1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;Ljava/lang/String;)V

    .line 347
    .local v0, "forcer":Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;

    invoke-direct {v3, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto :goto_0
.end method

.method public modifyTimingInfo(Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;)Z
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "syncTimingInfo"    # Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public registerBlurHandler(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;Lcom/motorola/blur/service/blur/sync/engine/Priority;Ljava/lang/Integer;Ljava/lang/String;)Z
    .locals 10
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "syncAppId"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "syncHandlerAction"    # Ljava/lang/String;
    .param p5, "syncTimingInfo"    # Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .param p7, "priority"    # Lcom/motorola/blur/service/blur/sync/engine/Priority;
    .param p8, "pageSize"    # Ljava/lang/Integer;
    .param p9, "dataFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/motorola/blur/service/blur/sync/engine/Priority;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 377
    .local p6, "observableUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$1;)V

    .local v0, "registrar":Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;
    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move v7, p2

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 378
    invoke-virtual/range {v0 .. v9}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->setToRegisterBlurHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;Lcom/motorola/blur/service/blur/sync/engine/Priority;ILjava/lang/Integer;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;

    invoke-direct {v3, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public registerBlurHandler(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)Z
    .locals 10
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "syncAppId"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "syncHandlerAction"    # Ljava/lang/String;
    .param p6, "pageSize"    # Ljava/lang/Integer;
    .param p7, "dataFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 387
    .local p5, "observableUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v5, 0x0

    sget-object v7, Lcom/motorola/blur/service/blur/sync/engine/Priority;->NORMAL:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->registerBlurHandler(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;Lcom/motorola/blur/service/blur/sync/engine/Priority;Ljava/lang/Integer;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;Lcom/motorola/blur/service/blur/sync/engine/Priority;)Z
    .locals 7
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "syncHandlerAction"    # Ljava/lang/String;
    .param p4, "syncTimingInfo"    # Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .param p6, "priority"    # Lcom/motorola/blur/service/blur/sync/engine/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/motorola/blur/service/blur/sync/engine/Priority;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 394
    .local p5, "observableUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$1;)V

    .local v0, "registrar":Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 395
    invoke-virtual/range {v0 .. v6}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->setToRegisterNonBlurHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;Lcom/motorola/blur/service/blur/sync/engine/Priority;)V

    .line 397
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;

    invoke-direct {v3, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public registerHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 7
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "syncHandlerAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 403
    .local p4, "observableUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v4, 0x0

    sget-object v6, Lcom/motorola/blur/service/blur/sync/engine/Priority;->NORMAL:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->registerHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;Lcom/motorola/blur/service/blur/sync/engine/Priority;)Z

    move-result v0

    return v0
.end method

.method public registerUncachedBlurHandler(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;Lcom/motorola/blur/service/blur/sync/engine/Priority;Ljava/lang/Integer;Ljava/lang/String;)Z
    .locals 10
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "syncAppId"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "syncHandlerAction"    # Ljava/lang/String;
    .param p5, "syncTimingInfo"    # Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .param p7, "priority"    # Lcom/motorola/blur/service/blur/sync/engine/Priority;
    .param p8, "pageSize"    # Ljava/lang/Integer;
    .param p9, "dataFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/motorola/blur/service/blur/sync/engine/Priority;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 367
    .local p6, "observableUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$1;)V

    .local v0, "registrar":Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;
    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move v7, p2

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 368
    invoke-virtual/range {v0 .. v9}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->setToRegisterUncachedBlurHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;Lcom/motorola/blur/service/blur/sync/engine/Priority;ILjava/lang/Integer;Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;

    invoke-direct {v3, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public resumeSync(I)Z
    .locals 5
    .param p1, "syncAppId"    # I

    .prologue
    .line 412
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;

    invoke-direct {v0, p0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)V

    .line 413
    .local v0, "gateKeeper":Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;
    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->setToResumeByAppId(I)V

    .line 414
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;

    invoke-direct {v3, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public resumeSync(Ljava/lang/String;)Z
    .locals 5
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 419
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;

    invoke-direct {v0, p0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)V

    .line 420
    .local v0, "gateKeeper":Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;
    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->setToResumeByName(Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;

    invoke-direct {v3, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public resumeSyncing()Z
    .locals 5

    .prologue
    .line 426
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;

    invoke-direct {v0, p0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)V

    .line 427
    .local v0, "gateKeeper":Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;
    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->setToResumeAll()V

    .line 428
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;

    invoke-direct {v3, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public setDataTypes(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .param p1, "handlerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 461
    .local p2, "dataTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$1;)V

    .line 462
    .local v0, "registrar":Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;
    invoke-virtual {v0, p1, p2}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->setToSpecifyExtraDataTypes(Ljava/lang/String;Ljava/util/List;)V

    .line 463
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;

    invoke-direct {v3, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public suspendAllSyncing()Z
    .locals 5

    .prologue
    .line 433
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;

    invoke-direct {v0, p0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)V

    .line 434
    .local v0, "gateKeeper":Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;
    invoke-virtual {v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->setToSuspendAll()V

    .line 435
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;

    invoke-direct {v3, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public suspendSync(I)Z
    .locals 5
    .param p1, "syncAppId"    # I

    .prologue
    .line 440
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;

    invoke-direct {v0, p0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)V

    .line 441
    .local v0, "gateKeeper":Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;
    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->setToSuspendByAppId(I)V

    .line 442
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;

    invoke-direct {v3, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public suspendSync(Ljava/lang/String;)Z
    .locals 5
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 447
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;

    invoke-direct {v0, p0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)V

    .line 448
    .local v0, "gateKeeper":Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;
    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->setToSuspendByName(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;

    invoke-direct {v3, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public unregisterBlurHandler(Ljava/lang/String;)Z
    .locals 5
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 454
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$1;)V

    .line 455
    .local v0, "registrar":Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;
    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->setToUnregisterHandler(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.service.blur.Actions.BIND_SYNC_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;

    invoke-direct {v3, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$MyServiceConnection;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method
