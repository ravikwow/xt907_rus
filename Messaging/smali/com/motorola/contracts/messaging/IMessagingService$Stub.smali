.class public abstract Lcom/motorola/contracts/messaging/IMessagingService$Stub;
.super Landroid/os/Binder;
.source "IMessagingService.java"

# interfaces
.implements Lcom/motorola/contracts/messaging/IMessagingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contracts/messaging/IMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "com.motorola.contracts.messaging.IMessagingService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 84
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 88
    sparse-switch p1, :sswitch_data_0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 92
    :sswitch_0
    const-string v5, "com.motorola.contracts.messaging.IMessagingService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :sswitch_1
    const-string v5, "com.motorola.contracts.messaging.IMessagingService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    sget-object v5, Lcom/motorola/contracts/messaging/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/contracts/messaging/Message;

    .line 106
    .local v0, "_arg0":Lcom/motorola/contracts/messaging/Message;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/contracts/messaging/IMessagingServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/contracts/messaging/IMessagingServiceCallback;

    move-result-object v1

    .line 108
    .local v1, "_arg1":Lcom/motorola/contracts/messaging/IMessagingServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/contracts/messaging/IMessagingService$Stub;->sendMessage(Lcom/motorola/contracts/messaging/Message;Lcom/motorola/contracts/messaging/IMessagingServiceCallback;I)I

    move-result v3

    .line 110
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v0    # "_arg0":Lcom/motorola/contracts/messaging/Message;
    .end local v1    # "_arg1":Lcom/motorola/contracts/messaging/IMessagingServiceCallback;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/motorola/contracts/messaging/Message;
    goto :goto_1

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
