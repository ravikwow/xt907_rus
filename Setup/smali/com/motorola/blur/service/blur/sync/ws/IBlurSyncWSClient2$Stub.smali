.class public abstract Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2$Stub;
.super Landroid/os/Binder;
.source "IBlurSyncWSClient2.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.blur.service.blur.sync.ws.IBlurSyncWSClient2"

.field static final TRANSACTION_ackClientAnchorChange:I = 0x4

.field static final TRANSACTION_getServerUpdate:I = 0x1

.field static final TRANSACTION_getServerUpdateWithoutBatching:I = 0x2

.field static final TRANSACTION_postClientCommit:I = 0x3

.field static final TRANSACTION_reportInvalidUpdateData:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.motorola.blur.service.blur.sync.ws.IBlurSyncWSClient2"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.motorola.blur.service.blur.sync.ws.IBlurSyncWSClient2"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v0, "com.motorola.blur.service.blur.sync.ws.IBlurSyncWSClient2"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.motorola.blur.service.blur.sync.ws.IBlurSyncWSClient2"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 56
    .local v2, "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2$Stub;->getServerUpdate(IJ)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    move-result-object v6

    .line 57
    .local v6, "_result":Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v6, :cond_0

    .line 59
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v6, p3, v7}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    move v0, v7

    .line 65
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 69
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v6    # "_result":Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    :sswitch_2
    const-string v0, "com.motorola.blur.service.blur.sync.ws.IBlurSyncWSClient2"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 74
    .restart local v2    # "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2$Stub;->getServerUpdateWithoutBatching(IJ)Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;

    move-result-object v6

    .line 75
    .restart local v6    # "_result":Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v6, :cond_1

    .line 77
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    invoke-virtual {v6, p3, v7}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v7

    .line 83
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 87
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v6    # "_result":Lcom/motorola/blur/service/blur/sync/ws/types/ClientUpdateResponse;
    :sswitch_3
    const-string v0, "com.motorola.blur.service.blur.sync.ws.IBlurSyncWSClient2"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 93
    .restart local v2    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sget-object v0, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;

    .line 100
    .local v4, "_arg2":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg3":Ljava/lang/String;
    move-object v0, p0

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2$Stub;->postClientCommit(IJLcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;

    move-result-object v6

    .line 102
    .local v6, "_result":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v6, :cond_3

    .line 104
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v6, p3, v7}, Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v0, v7

    .line 110
    goto :goto_0

    .line 97
    .end local v4    # "_arg2":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    goto :goto_3

    .line 108
    .restart local v5    # "_arg3":Ljava/lang/String;
    .restart local v6    # "_result":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 114
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitRequest;
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Lcom/motorola/blur/service/blur/sync/ws/types/ClientCommitResponse;
    :sswitch_4
    const-string v0, "com.motorola.blur.service.blur.sync.ws.IBlurSyncWSClient2"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 119
    .restart local v2    # "_arg1":J
    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2$Stub;->ackClientAnchorChange(IJ)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 121
    goto/16 :goto_0

    .line 125
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":J
    :sswitch_5
    const-string v0, "com.motorola.blur.service.blur.sync.ws.IBlurSyncWSClient2"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/motorola/blur/service/blur/sync/ws/IBlurSyncWSClient2$Stub;->reportInvalidUpdateData(I)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 130
    goto/16 :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
