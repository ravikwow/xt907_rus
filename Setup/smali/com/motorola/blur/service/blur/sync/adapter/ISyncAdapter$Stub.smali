.class public abstract Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub;
.super Landroid/os/Binder;
.source "ISyncAdapter.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

.field static final TRANSACTION_areClientChanges:I = 0x5

.field static final TRANSACTION_commit:I = 0xa

.field static final TRANSACTION_getAction:I = 0x1

.field static final TRANSACTION_getAllClientData:I = 0x9

.field static final TRANSACTION_getClientChangelist:I = 0x8

.field static final TRANSACTION_getClientChangelistPaged:I = 0x7

.field static final TRANSACTION_getLastClientAnchor:I = 0x3

.field static final TRANSACTION_getLastKnownServerAnchor:I = 0x4

.field static final TRANSACTION_initializeService:I = 0x2

.field static final TRANSACTION_resetService:I = 0xb

.field static final TRANSACTION_updateClient:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 45
    :sswitch_0
    const-string v6, "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v6, "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v6, "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 63
    .local v1, "_arg1":J
    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub;->initializeService(Ljava/lang/String;J)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    :sswitch_3
    const-string v6, "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub;->getLastClientAnchor(Ljava/lang/String;)J

    move-result-wide v4

    .line 73
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 79
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":J
    :sswitch_4
    const-string v6, "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub;->getLastKnownServerAnchor(Ljava/lang/String;)J

    move-result-wide v4

    .line 83
    .restart local v4    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":J
    :sswitch_5
    const-string v8, "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub;->areClientChanges(Ljava/lang/String;)Z

    move-result v4

    .line 93
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_6
    const-string v6, "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;

    move-result-object v1

    .line 105
    .local v1, "_arg1":Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    sget-object v6, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;

    .line 111
    .local v3, "_arg2":Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;
    :goto_1
    invoke-virtual {p0, v0, v1, v3}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub;->updateClient(Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;)Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;

    move-result-object v4

    .line 112
    .local v4, "_result":Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 109
    .end local v3    # "_arg2":Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;
    .end local v4    # "_result":Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;
    goto :goto_1

    .restart local v4    # "_result":Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;
    :cond_2
    move-object v6, v8

    .line 113
    goto :goto_2

    .line 118
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/motorola/blur/service/blur/sync/adapter/IServerDiffs;
    .end local v3    # "_arg2":Lcom/motorola/blur/service/blur/sync/adapter/ConflictStrategy;
    .end local v4    # "_result":Lcom/motorola/blur/service/blur/sync/adapter/ISyncUpdateResult;
    :sswitch_7
    const-string v6, "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub;->getClientChangelistPaged(Ljava/lang/String;I)Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;

    move-result-object v4

    .line 124
    .local v4, "_result":Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;
    :sswitch_8
    const-string v6, "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub;->getClientChangelist(Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;

    move-result-object v4

    .line 134
    .restart local v4    # "_result":Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 140
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;
    :sswitch_9
    const-string v6, "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub;->getAllClientData(Ljava/lang/String;)Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;

    move-result-object v4

    .line 144
    .restart local v4    # "_result":Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 150
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/motorola/blur/service/blur/sync/adapter/IClientDiffs;
    :sswitch_a
    const-string v8, "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 155
    .local v1, "_arg1":J
    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub;->commit(Ljava/lang/String;J)Z

    move-result v4

    .line 156
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v4, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v4    # "_result":Z
    :sswitch_b
    const-string v8, "com.motorola.blur.service.blur.sync.adapter.ISyncAdapter"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 167
    .restart local v1    # "_arg1":J
    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/blur/service/blur/sync/adapter/ISyncAdapter$Stub;->resetService(Ljava/lang/String;J)Z

    move-result v4

    .line 168
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v4, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
