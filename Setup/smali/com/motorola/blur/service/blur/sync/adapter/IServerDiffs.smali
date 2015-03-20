.class public interface abstract Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;
.super Ljava/lang/Object;
.source "IServerDiffs.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs$Stub;
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

.method public abstract getChangesSinceAnchor()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentServerAnchor()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
