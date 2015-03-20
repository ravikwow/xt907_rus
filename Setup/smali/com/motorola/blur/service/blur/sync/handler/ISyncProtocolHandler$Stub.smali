.class public abstract Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler$Stub;
.super Landroid/os/Binder;
.source "ISyncProtocolHandler.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.blur.service.blur.sync.handler.ISyncProtocolHandler"

.field static final TRANSACTION_cancelSync:I = 0x3

.field static final TRANSACTION_cleanup:I = 0x4

.field static final TRANSACTION_executeSync:I = 0x1

.field static final TRANSACTION_isSyncing:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.motorola.blur.service.blur.sync.handler.ISyncProtocolHandler"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v1, "com.motorola.blur.service.blur.sync.handler.ISyncProtocolHandler"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 50
    :sswitch_0
    const-string v4, "com.motorola.blur.service.blur.sync.handler.ISyncProtocolHandler"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v5, "com.motorola.blur.service.blur.sync.handler.ISyncProtocolHandler"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v3

    .line 60
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler$Stub;->executeSync(Ljava/lang/String;Z)Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;

    move-result-object v2

    .line 61
    .local v2, "_result":Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {v2, p3, v3}, Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :cond_0
    move v1, v4

    .line 59
    goto :goto_1

    .line 67
    .restart local v1    # "_arg1":Z
    .restart local v2    # "_result":Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Lcom/motorola/blur/service/blur/sync/handler/SyncProtocolHandlerStatusCode;
    :sswitch_2
    const-string v5, "com.motorola.blur.service.blur.sync.handler.ISyncProtocolHandler"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler$Stub;->isSyncing()Z

    move-result v2

    .line 75
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v2, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v2    # "_result":Z
    :sswitch_3
    const-string v5, "com.motorola.blur.service.blur.sync.handler.ISyncProtocolHandler"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler$Stub;->cancelSync()Z

    move-result v2

    .line 83
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v2, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v2    # "_result":Z
    :sswitch_4
    const-string v4, "com.motorola.blur.service.blur.sync.handler.ISyncProtocolHandler"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/handler/ISyncProtocolHandler$Stub;->cleanup()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
