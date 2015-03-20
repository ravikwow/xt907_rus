.class public interface abstract Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSProxy;
.super Ljava/lang/Object;
.source "IBlurSyncWSProxy.java"


# virtual methods
.method public abstract ackClientAnchorChange(IJ)V
.end method

.method public abstract getServerUpdate(IJ)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
.end method

.method public abstract getServerUpdateWithoutBatching(IJ)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
.end method

.method public abstract init()Z
.end method

.method public abstract postClientCommit(IJLcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
.end method

.method public abstract release()V
.end method

.method public abstract reportInvalidUpdateData(I)V
.end method
