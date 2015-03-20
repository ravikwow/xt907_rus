.class public interface abstract Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;
.super Ljava/lang/Object;
.source "IClientDiffs.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs$Stub;
    }
.end annotation


# virtual methods
.method public abstract getByteArray()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLastClientAnchor()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract statusInfo()Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
