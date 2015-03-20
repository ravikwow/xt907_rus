.class public interface abstract Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;
.super Ljava/lang/Object;
.source "ISyncUpdateResult.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult$Stub;
    }
.end annotation


# virtual methods
.method public abstract areConflicts()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getConflicts()[B
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
