.class public interface abstract Lcom/motorola/blur/service/blur/sync/engine/ISyncEngineProxy;
.super Ljava/lang/Object;
.source "ISyncEngineProxy.java"


# virtual methods
.method public abstract forceBlurSync(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract forceBlurSyncNow(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract forceSync(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract modifyTimingInfo(Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;)Z
.end method

.method public abstract registerBlurHandler(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;Lcom/motorola/blur/service/blur/sync/engine/Priority;Ljava/lang/Integer;Ljava/lang/String;)Z
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
.end method

.method public abstract registerBlurHandler(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;)Z
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
.end method

.method public abstract registerHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;Lcom/motorola/blur/service/blur/sync/engine/Priority;)Z
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
.end method

.method public abstract registerHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
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
.end method

.method public abstract registerUncachedBlurHandler(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;Lcom/motorola/blur/service/blur/sync/engine/Priority;Ljava/lang/Integer;Ljava/lang/String;)Z
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
.end method

.method public abstract resumeSync(I)Z
.end method

.method public abstract resumeSync(Ljava/lang/String;)Z
.end method

.method public abstract resumeSyncing()Z
.end method

.method public abstract setDataTypes(Ljava/lang/String;Ljava/util/List;)Z
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
.end method

.method public abstract suspendAllSyncing()Z
.end method

.method public abstract suspendSync(I)Z
.end method

.method public abstract suspendSync(Ljava/lang/String;)Z
.end method

.method public abstract unregisterBlurHandler(Ljava/lang/String;)Z
.end method
