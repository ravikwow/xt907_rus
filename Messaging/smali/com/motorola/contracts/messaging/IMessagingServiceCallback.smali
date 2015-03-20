.class public interface abstract Lcom/motorola/contracts/messaging/IMessagingServiceCallback;
.super Ljava/lang/Object;
.source "IMessagingServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contracts/messaging/IMessagingServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSendRequestFailed(ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSendRequestProcessed(Landroid/net/Uri;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
