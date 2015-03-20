.class public abstract Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult$Stub;
.super Landroid/os/Binder;
.source "ISyncUpdateResult.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.blur.service.blur.sync.adapter.ISyncUpdateResult"

.field static final TRANSACTION_areConflicts:I = 0x2

.field static final TRANSACTION_getConflicts:I = 0x3

.field static final TRANSACTION_statusInfo:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.motorola.blur.service.blur.sync.adapter.ISyncUpdateResult"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.motorola.blur.service.blur.sync.adapter.ISyncUpdateResult"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v1, "com.motorola.blur.service.blur.sync.adapter.ISyncUpdateResult"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.motorola.blur.service.blur.sync.adapter.ISyncUpdateResult"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult$Stub;->statusInfo()Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;

    move-result-object v0

    .line 49
    .local v0, "_result":Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {v0, p3, v2}, Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v0    # "_result":Lcom/motorola/blur/service/blur/sync/adapter/SyncAdapterStatus;
    :sswitch_2
    const-string v3, "com.motorola.blur.service.blur.sync.adapter.ISyncUpdateResult"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult$Stub;->areConflicts()Z

    move-result v0

    .line 63
    .local v0, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v0    # "_result":Z
    :sswitch_3
    const-string v1, "com.motorola.blur.service.blur.sync.adapter.ISyncUpdateResult"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult$Stub;->getConflicts()[B

    move-result-object v0

    .line 71
    .local v0, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
