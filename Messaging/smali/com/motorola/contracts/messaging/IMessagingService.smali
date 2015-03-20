.class public interface abstract Lcom/motorola/contracts/messaging/IMessagingService;
.super Ljava/lang/Object;
.source "IMessagingService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contracts/messaging/IMessagingService$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendMessage(Lcom/motorola/contracts/messaging/Message;Lcom/motorola/contracts/messaging/IMessagingServiceCallback;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
