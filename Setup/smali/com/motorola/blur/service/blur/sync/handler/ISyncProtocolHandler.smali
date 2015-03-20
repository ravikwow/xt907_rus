.class public interface abstract Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler;
.super Ljava/lang/Object;
.source "ISyncProtocolHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelSync()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cleanup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract executeSync(Ljava/lang/String;Z)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isSyncing()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
