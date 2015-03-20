.class public Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;
.super Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;
.source "SyncEngineProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncProxyGatekeeper"
.end annotation


# instance fields
.field private mCommand:I

.field private mHandlerName:Ljava/lang/String;

.field private mSyncAppId:I

.field final synthetic this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)V
    .locals 1

    .prologue
    .line 254
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$1;)V

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mCommand:I

    .line 255
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 288
    :try_start_0
    iget v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mCommand:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 290
    :try_start_1
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->suspendAllSyncing()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;

    # getter for: Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->access$100(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 338
    :cond_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "SyncEngineProxy"

    const-string v2, "Unable to suspend all syncing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v1, "SyncEngineProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_1

    .line 335
    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;

    # getter for: Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->access$100(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    throw v1

    .line 295
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mCommand:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 297
    :try_start_4
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    invoke-interface {v1}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->resumeSyncing()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 298
    :catch_1
    move-exception v0

    .line 299
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "SyncEngineProxy"

    const-string v2, "Unable to resume all syncing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v1, "SyncEngineProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mCommand:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 304
    :try_start_6
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mHandlerName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->suspendSyncByName(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 305
    :catch_2
    move-exception v0

    .line 306
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v1, "SyncEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to suspend syncing for handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mHandlerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v1, "SyncEngineProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mCommand:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 311
    :try_start_8
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    iget v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mSyncAppId:I

    invoke-interface {v1, v2}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->suspendSyncByAppId(I)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 312
    :catch_3
    move-exception v0

    .line 313
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string v1, "SyncEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to suspend syncing for sync app id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mSyncAppId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v1, "SyncEngineProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 316
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iget v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mCommand:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 318
    :try_start_a
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mHandlerName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->resumeSyncByName(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 319
    :catch_4
    move-exception v0

    .line 320
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_b
    const-string v1, "SyncEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to resume syncing for handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mHandlerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v1, "SyncEngineProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 323
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    iget v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mCommand:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 325
    :try_start_c
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    iget v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mSyncAppId:I

    invoke-interface {v1, v2}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->resumeSyncByAppId(I)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 326
    :catch_5
    move-exception v0

    .line 327
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_d
    const-string v1, "SyncEngineProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to resume syncing for sync app id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mSyncAppId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v1, "SyncEngineProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 331
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v1, "SyncEngineProxy"

    const-string v2, "Sync engine proxy is being invoked with nothing to do."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0
.end method

.method public setToResumeAll()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mCommand:I

    .line 263
    return-void
.end method

.method public setToResumeByAppId(I)V
    .locals 1
    .param p1, "syncAppId"    # I

    .prologue
    .line 281
    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mCommand:I

    .line 282
    iput p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mSyncAppId:I

    .line 283
    return-void
.end method

.method public setToResumeByName(Ljava/lang/String;)V
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mCommand:I

    .line 277
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mHandlerName:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setToSuspendAll()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mCommand:I

    .line 259
    return-void
.end method

.method public setToSuspendByAppId(I)V
    .locals 1
    .param p1, "syncAppId"    # I

    .prologue
    .line 271
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mCommand:I

    .line 272
    iput p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mSyncAppId:I

    .line 273
    return-void
.end method

.method public setToSuspendByName(Ljava/lang/String;)V
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mCommand:I

    .line 267
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyGatekeeper;->mHandlerName:Ljava/lang/String;

    .line 268
    return-void
.end method
