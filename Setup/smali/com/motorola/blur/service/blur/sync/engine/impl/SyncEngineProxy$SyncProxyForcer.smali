.class Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;
.super Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;
.source "SyncEngineProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncProxyForcer"
.end annotation


# instance fields
.field private mHandlerName:Ljava/lang/String;

.field private mNow:Z

.field private mSyncAppId:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;IZ)V
    .locals 1
    .param p2, "syncAppId"    # I
    .param p3, "now"    # Z

    .prologue
    .line 88
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;->this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$1;)V

    .line 89
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;->mSyncAppId:Ljava/lang/Integer;

    .line 90
    iput-boolean p3, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;->mNow:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;Ljava/lang/String;)V
    .locals 1
    .param p2, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;->this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$1;)V

    .line 85
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;->mHandlerName:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;->mHandlerName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;->mHandlerName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->forceSync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;->this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;

    # getter for: Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->access$100(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 112
    :cond_0
    :goto_1
    return-void

    .line 98
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;->mNow:Z

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;->mSyncAppId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->forceBlurSyncNow(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "SyncEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to force sync through sync engine proxy for handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;->mHandlerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v1, "SyncEngineProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;->this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;

    # getter for: Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->access$100(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;->mSyncAppId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->forceBlurSync(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_3

    .line 109
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyForcer;->this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;

    # getter for: Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->access$100(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_3
    throw v1
.end method
