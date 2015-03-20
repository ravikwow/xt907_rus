.class public Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;
.super Ljava/lang/Object;
.source "SyncWSProxy.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;


# static fields
.field private static final BIND_TO_SERVICE_TIMEOUT_SECS:I = 0x1e

.field private static final MESSAGE_VERSION:I = 0x1

.field private static final SYNC_WS_SERVICE_ACTION:Ljava/lang/String; = "com.motorola.blur.service.blur.Actions.BIND_SYNC_WSPROXY_SVC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;

.field private mServiceBinder:Lcom/motorola/blur/util/service/ServiceBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/motorola/blur/util/service/ServiceBinder;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.blur.service.blur.Actions.BIND_SYNC_WSPROXY_SVC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/motorola/blur/util/service/ServiceBinder;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->mServiceBinder:Lcom/motorola/blur/util/service/ServiceBinder;

    .line 36
    return-void
.end method


# virtual methods
.method public ackClientAnchorChange(IJ)V
    .locals 5
    .param p1, "syncAppId"    # I
    .param p2, "newClientAnchor"    # J

    .prologue
    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;

    invoke-interface {v3, p1, p2, p3}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;->ackClientAnchorChange(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v2

    .line 123
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync ws proxy lost connection to core services while acking client anchor change for sync app id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "msg":Ljava/lang/String;
    sget-object v3, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ackClientAnchorChange(): Unknown exception for sync app id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1    # "msg":Ljava/lang/String;
    sget-object v3, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v3, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getServerUpdate(IJ)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    .locals 6
    .param p1, "appId"    # I
    .param p2, "lastClientAnchor"    # J

    .prologue
    .line 54
    const/4 v3, 0x0

    .line 56
    .local v3, "updateResponse":Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    :try_start_0
    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;

    invoke-interface {v4, p1, p2, p3}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;->getServerUpdate(IJ)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 74
    :goto_0
    return-object v4

    .line 57
    :catch_0
    move-exception v2

    .line 58
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync ws proxy lost connection to core services while getting server update for sync app id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "msg":Ljava/lang/String;
    sget-object v4, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v4, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->UnknownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v4}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toValue()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->create(I)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    move-result-object v3

    .line 63
    invoke-virtual {v3, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->setExtendedStatus(Ljava/lang/String;)V

    .line 64
    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v3, v4}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->setWSErrorCode(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V

    move-object v4, v3

    .line 65
    goto :goto_0

    .line 66
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getServerUpdate(): Unknown exception for sync app id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .restart local v1    # "msg":Ljava/lang/String;
    sget-object v4, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v4, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->UnknownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v4}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toValue()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->create(I)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    move-result-object v3

    .line 72
    invoke-virtual {v3, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->setExtendedStatus(Ljava/lang/String;)V

    .line 73
    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v3, v4}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->setWSErrorCode(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V

    move-object v4, v3

    .line 74
    goto :goto_0
.end method

.method public getServerUpdateWithoutBatching(IJ)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    .locals 6
    .param p1, "appId"    # I
    .param p2, "lastClientAnchor"    # J

    .prologue
    .line 79
    const/4 v3, 0x0

    .line 81
    .local v3, "updateResponse":Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    :try_start_0
    iget-object v4, p0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;

    invoke-interface {v4, p1, p2, p3}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;->getServerUpdateWithoutBatching(IJ)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 99
    :goto_0
    return-object v4

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync ws proxy lost connection to core services while getting server update for sync app id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "msg":Ljava/lang/String;
    sget-object v4, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v4, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->UnknownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v4}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toValue()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->create(I)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    move-result-object v3

    .line 88
    invoke-virtual {v3, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->setExtendedStatus(Ljava/lang/String;)V

    .line 89
    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v3, v4}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->setWSErrorCode(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V

    move-object v4, v3

    .line 90
    goto :goto_0

    .line 91
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getServerUpdateWithoutBatching(): Unknown exception for sync app id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .restart local v1    # "msg":Ljava/lang/String;
    sget-object v4, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v4, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->UnknownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v4}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toValue()I

    move-result v4

    invoke-static {v4}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->create(I)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    move-result-object v3

    .line 97
    invoke-virtual {v3, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->setExtendedStatus(Ljava/lang/String;)V

    .line 98
    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v3, v4}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->setWSErrorCode(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V

    move-object v4, v3

    .line 99
    goto :goto_0
.end method

.method public init()Z
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->mServiceBinder:Lcom/motorola/blur/util/service/ServiceBinder;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/motorola/blur/util/service/ServiceBinder;->bind(I)Landroid/os/IBinder;

    move-result-object v0

    .line 40
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 41
    const/4 v1, 0x0

    .line 44
    :goto_0
    return v1

    .line 43
    :cond_0
    invoke-static {v0}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;

    .line 44
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public postClientCommit(IJLcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    .locals 10
    .param p1, "appId"    # I
    .param p2, "lastClientAnchor"    # J
    .param p4, "commitPackage"    # Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    .param p5, "format"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v6, 0x0

    .line 138
    .local v6, "commitResponse":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;->postClientCommit(IJLcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 139
    :catch_0
    move-exception v9

    .line 140
    .local v9, "re":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postClientCommit() thread lost connection to core services: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, "msg":Ljava/lang/String;
    sget-object v0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x1

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->UnknownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->create(II)Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;

    move-result-object v6

    .line 146
    invoke-virtual {v6, v8}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->setExtendedStatus(Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v6, v0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->setWSErrorCode(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V

    move-object v0, v6

    .line 148
    goto :goto_0

    .line 149
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 150
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postClientCommit(): Unknown exception for sync app id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 152
    .restart local v8    # "msg":Ljava/lang/String;
    sget-object v0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x1

    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->UnknownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->create(II)Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;

    move-result-object v6

    .line 156
    invoke-virtual {v6, v8}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->setExtendedStatus(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v6, v0}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->setWSErrorCode(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V

    move-object v0, v6

    .line 158
    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->mServiceBinder:Lcom/motorola/blur/util/service/ServiceBinder;

    invoke-virtual {v0}, Lcom/motorola/blur/util/service/ServiceBinder;->unbind()V

    .line 51
    :cond_0
    return-void
.end method

.method public reportInvalidUpdateData(I)V
    .locals 6
    .param p1, "syncAppId"    # I

    .prologue
    .line 105
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->mProxy:Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;

    invoke-interface {v3, p1}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;->reportInvalidUpdateData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v3, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync ws proxy lost connection to core services while reporting invalid update data for sync app id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportInvalidUpdateData(): Unknown exception for sync app id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "msg":Ljava/lang/String;
    sget-object v3, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v3, Lcom/motorola/blur/service/blur/sync/ws/impl/SyncWSProxy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
