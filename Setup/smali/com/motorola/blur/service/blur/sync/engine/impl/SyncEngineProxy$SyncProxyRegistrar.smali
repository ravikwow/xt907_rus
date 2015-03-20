.class Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;
.super Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;
.source "SyncEngineProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncProxyRegistrar"
.end annotation


# instance fields
.field private mAppId:I

.field private mCommand:I

.field private mDataFormat:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mExtraDataTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerAction:Ljava/lang/String;

.field private mHandlerName:Ljava/lang/String;

.field private mObservables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mPageSize:Ljava/lang/Integer;

.field private mPriority:Lcom/motorola/blur/service/blur/sync/engine/Priority;

.field private mTimingInfo:Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

.field final synthetic this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;


# direct methods
.method private constructor <init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)V
    .locals 1

    .prologue
    .line 121
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$1;)V

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mCommand:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$1;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;-><init>(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 190
    :try_start_0
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mCommand:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    iget v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mAppId:I

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mDescription:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerAction:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mTimingInfo:Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    iget-object v6, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mObservables:Ljava/util/List;

    iget-object v7, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mPriority:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/sync/engine/Priority;->toValue()I

    move-result v7

    iget-object v9, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mPageSize:Ljava/lang/Integer;

    if-eqz v9, :cond_0

    iget-object v8, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mPageSize:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_0
    iget-object v9, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mDataFormat:Ljava/lang/String;

    invoke-interface/range {v0 .. v9}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->registerBlurHandler(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;IILjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;

    # getter for: Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->access$100(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 238
    :cond_1
    return-void

    .line 195
    :catch_0
    move-exception v10

    .line 196
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "SyncEngineProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register blur sync handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v0, "SyncEngineProxy"

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 234
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->this$0:Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;

    # getter for: Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;->access$100(Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    throw v0

    .line 199
    :cond_3
    :try_start_3
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mCommand:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 201
    :try_start_4
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mDescription:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerAction:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mTimingInfo:Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mObservables:Ljava/util/List;

    iget-object v6, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mPriority:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    invoke-virtual {v6}, Lcom/motorola/blur/service/blur/sync/engine/Priority;->toValue()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->registerHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 203
    :catch_1
    move-exception v10

    .line 204
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v0, "SyncEngineProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register non-blur sync handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v0, "SyncEngineProxy"

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_4
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mCommand:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 209
    :try_start_6
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->unregisterHandler(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 210
    :catch_2
    move-exception v10

    .line 211
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v0, "SyncEngineProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to unregister sync handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v0, "SyncEngineProxy"

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_5
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mCommand:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 216
    :try_start_8
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    iget v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mAppId:I

    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mDescription:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerAction:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mTimingInfo:Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    iget-object v6, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mObservables:Ljava/util/List;

    iget-object v7, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mPriority:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/sync/engine/Priority;->toValue()I

    move-result v7

    iget-object v9, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mPageSize:Ljava/lang/Integer;

    if-eqz v9, :cond_6

    iget-object v8, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mPageSize:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_6
    iget-object v9, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mDataFormat:Ljava/lang/String;

    invoke-interface/range {v0 .. v9}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->registerUncachedBlurHandler(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;IILjava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 219
    :catch_3
    move-exception v10

    .line 220
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string v0, "SyncEngineProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register uncached blur sync handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v0, "SyncEngineProxy"

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 223
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_7
    iget v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mCommand:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    .line 225
    :try_start_a
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncRunnable;->mEngine:Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mExtraDataTypes:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;->setDataTypes(Ljava/lang/String;Ljava/util/List;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 226
    :catch_4
    move-exception v10

    .line 227
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_b
    const-string v0, "SyncEngineProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set extra data types for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v0, "SyncEngineProxy"

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 231
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_8
    const-string v0, "SyncEngineProxy"

    const-string v1, "Sync engine proxy is being invoked with nothing to do."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0
.end method

.method public setToRegisterBlurHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;Lcom/motorola/blur/service/blur/sync/engine/Priority;ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "handlerAction"    # Ljava/lang/String;
    .param p4, "timingInfo"    # Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .param p6, "priority"    # Lcom/motorola/blur/service/blur/sync/engine/Priority;
    .param p7, "syncAppId"    # I
    .param p8, "pageSize"    # Ljava/lang/Integer;
    .param p9, "dataFormat"    # Ljava/lang/String;
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
            "I",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    .local p5, "observables":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mDescription:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerAction:Ljava/lang/String;

    .line 153
    iput-object p4, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mTimingInfo:Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    .line 154
    iput-object p5, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mObservables:Ljava/util/List;

    .line 155
    iput-object p6, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mPriority:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    .line 156
    iput p7, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mAppId:I

    .line 157
    iput-object p8, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mPageSize:Ljava/lang/Integer;

    .line 158
    iput-object p9, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mDataFormat:Ljava/lang/String;

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mCommand:I

    .line 160
    return-void
.end method

.method public setToRegisterNonBlurHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;Lcom/motorola/blur/service/blur/sync/engine/Priority;)V
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "handlerAction"    # Ljava/lang/String;
    .param p4, "timingInfo"    # Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
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
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    .local p5, "observables":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mDescription:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerAction:Ljava/lang/String;

    .line 141
    iput-object p4, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mTimingInfo:Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    .line 142
    iput-object p5, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mObservables:Ljava/util/List;

    .line 143
    iput-object p6, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mPriority:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    .line 144
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mCommand:I

    .line 145
    return-void
.end method

.method public setToRegisterUncachedBlurHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;Lcom/motorola/blur/service/blur/sync/engine/Priority;ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "handlerAction"    # Ljava/lang/String;
    .param p4, "timingInfo"    # Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .param p6, "priority"    # Lcom/motorola/blur/service/blur/sync/engine/Priority;
    .param p7, "syncAppId"    # I
    .param p8, "pageSize"    # Ljava/lang/Integer;
    .param p9, "dataFormat"    # Ljava/lang/String;
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
            "I",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p5, "observables":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mDescription:Ljava/lang/String;

    .line 167
    iput-object p3, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerAction:Ljava/lang/String;

    .line 168
    iput-object p4, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mTimingInfo:Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    .line 169
    iput-object p5, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mObservables:Ljava/util/List;

    .line 170
    iput-object p6, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mPriority:Lcom/motorola/blur/service/blur/sync/engine/Priority;

    .line 171
    iput p7, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mAppId:I

    .line 172
    iput-object p8, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mPageSize:Ljava/lang/Integer;

    .line 173
    iput-object p9, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mDataFormat:Ljava/lang/String;

    .line 174
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mCommand:I

    .line 175
    return-void
.end method

.method public setToSpecifyExtraDataTypes(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, "dataTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mExtraDataTypes:Ljava/util/List;

    .line 185
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mCommand:I

    .line 186
    return-void
.end method

.method public setToUnregisterHandler(Ljava/lang/String;)V
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mHandlerName:Ljava/lang/String;

    .line 179
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/blur/service/blur/sync/engine/impl/SyncEngineProxy$SyncProxyRegistrar;->mCommand:I

    .line 180
    return-void
.end method
