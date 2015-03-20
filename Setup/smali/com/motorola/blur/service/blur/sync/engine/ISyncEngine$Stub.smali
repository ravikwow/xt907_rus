.class public abstract Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;
.super Landroid/os/Binder;
.source "ISyncEngine.java"

# interfaces
.implements Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

.field static final TRANSACTION_cancelCurrentSync:I = 0x6

.field static final TRANSACTION_forceBlurSync:I = 0x9

.field static final TRANSACTION_forceBlurSyncNow:I = 0xa

.field static final TRANSACTION_forceSync:I = 0x8

.field static final TRANSACTION_registerBlurHandler:I = 0x2

.field static final TRANSACTION_registerHandler:I = 0x1

.field static final TRANSACTION_registerUncachedBlurHandler:I = 0x3

.field static final TRANSACTION_resumeSyncByAppId:I = 0xe

.field static final TRANSACTION_resumeSyncByName:I = 0xd

.field static final TRANSACTION_resumeSyncing:I = 0x10

.field static final TRANSACTION_setDataTypes:I = 0x5

.field static final TRANSACTION_suspendAllSyncing:I = 0xf

.field static final TRANSACTION_suspendSyncByAppId:I = 0xc

.field static final TRANSACTION_suspendSyncByName:I = 0xb

.field static final TRANSACTION_unregisterHandler:I = 0x4

.field static final TRANSACTION_whichSyncInProgress:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-string v1, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine;

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
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
    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 267
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 56
    :sswitch_0
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x1

    goto :goto_0

    .line 61
    :sswitch_1
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    sget-object v2, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    .line 76
    .local v6, "_arg3":Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    :goto_1
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 78
    .local v7, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg5":I
    move-object/from16 v2, p0

    .line 79
    invoke-virtual/range {v2 .. v8}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->registerHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;I)Z

    move-result v20

    .line 80
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v20, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v2, 0x1

    goto :goto_0

    .line 73
    .end local v6    # "_arg3":Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .end local v7    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v8    # "_arg5":I
    .end local v20    # "_result":Z
    :cond_0
    const/4 v6, 0x0

    .restart local v6    # "_arg3":Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    goto :goto_1

    .line 81
    .restart local v7    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .restart local v8    # "_arg5":I
    .restart local v20    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 86
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .end local v7    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v8    # "_arg5":I
    .end local v20    # "_result":Z
    :sswitch_2
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 92
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 94
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    sget-object v2, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    .line 103
    .local v14, "_arg4":Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    :goto_3
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 105
    .local v15, "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 107
    .local v16, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 109
    .local v17, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .local v18, "_arg8":Ljava/lang/String;
    move-object/from16 v9, p0

    move-object v10, v3

    move v11, v4

    move-object v12, v5

    move-object v13, v6

    .line 110
    invoke-virtual/range {v9 .. v18}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->registerBlurHandler(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;IILjava/lang/String;)Z

    move-result v20

    .line 111
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v20, :cond_3

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 100
    .end local v14    # "_arg4":Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .end local v15    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v16    # "_arg6":I
    .end local v17    # "_arg7":I
    .end local v18    # "_arg8":Ljava/lang/String;
    .end local v20    # "_result":Z
    :cond_2
    const/4 v14, 0x0

    .restart local v14    # "_arg4":Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    goto :goto_3

    .line 112
    .restart local v15    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .restart local v16    # "_arg6":I
    .restart local v17    # "_arg7":I
    .restart local v18    # "_arg8":Ljava/lang/String;
    .restart local v20    # "_result":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 117
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v14    # "_arg4":Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .end local v15    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v16    # "_arg6":I
    .end local v17    # "_arg7":I
    .end local v18    # "_arg8":Ljava/lang/String;
    .end local v20    # "_result":Z
    :sswitch_3
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 123
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 125
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 127
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    sget-object v2, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;

    .line 134
    .restart local v14    # "_arg4":Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    :goto_5
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 136
    .restart local v15    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 138
    .restart local v16    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 140
    .restart local v17    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "_arg8":Ljava/lang/String;
    move-object/from16 v9, p0

    move-object v10, v3

    move v11, v4

    move-object v12, v5

    move-object v13, v6

    .line 141
    invoke-virtual/range {v9 .. v18}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->registerUncachedBlurHandler(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;Ljava/util/List;IILjava/lang/String;)Z

    move-result v20

    .line 142
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v20, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 131
    .end local v14    # "_arg4":Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .end local v15    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v16    # "_arg6":I
    .end local v17    # "_arg7":I
    .end local v18    # "_arg8":Ljava/lang/String;
    .end local v20    # "_result":Z
    :cond_4
    const/4 v14, 0x0

    .restart local v14    # "_arg4":Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    goto :goto_5

    .line 143
    .restart local v15    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .restart local v16    # "_arg6":I
    .restart local v17    # "_arg7":I
    .restart local v18    # "_arg8":Ljava/lang/String;
    .restart local v20    # "_result":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 148
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v14    # "_arg4":Lcom/motorola/blur/service/blur/sync/engine/SyncTimingInfo;
    .end local v15    # "_arg5":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v16    # "_arg6":I
    .end local v17    # "_arg7":I
    .end local v18    # "_arg8":Ljava/lang/String;
    .end local v20    # "_result":Z
    :sswitch_4
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->unregisterHandler(Ljava/lang/String;)Z

    move-result v20

    .line 152
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v20, :cond_6

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 153
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 158
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":Z
    :sswitch_5
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 163
    .local v19, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->setDataTypes(Ljava/lang/String;Ljava/util/List;)Z

    move-result v20

    .line 164
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v20, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 165
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 170
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "_result":Z
    :sswitch_6
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->cancelCurrentSync()V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 177
    :sswitch_7
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->whichSyncInProgress()Ljava/lang/String;

    move-result-object v20

    .line 179
    .local v20, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 185
    .end local v20    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->forceSync(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 194
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 197
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->forceBlurSync(I)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 203
    .end local v3    # "_arg0":I
    :sswitch_a
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->forceBlurSyncNow(I)V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 212
    .end local v3    # "_arg0":I
    :sswitch_b
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->suspendSyncByName(Ljava/lang/String;)Z

    move-result v20

    .line 216
    .local v20, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v20, :cond_8

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 217
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 222
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":Z
    :sswitch_c
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 225
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->suspendSyncByAppId(I)Z

    move-result v20

    .line 226
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v20, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 227
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 232
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Z
    :sswitch_d
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->resumeSyncByName(Ljava/lang/String;)Z

    move-result v20

    .line 236
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v20, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 237
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 242
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":Z
    :sswitch_e
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 245
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->resumeSyncByAppId(I)Z

    move-result v20

    .line 246
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v20, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 247
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 252
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Z
    :sswitch_f
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->suspendAllSyncing()Z

    move-result v20

    .line 254
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v20, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 255
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 260
    .end local v20    # "_result":Z
    :sswitch_10
    const-string v2, "com.motorola.blur.service.blur.sync.engine.ISyncEngine"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/service/blur/sync/engine/ISyncEngine$Stub;->resumeSyncing()Z

    move-result v20

    .line 262
    .restart local v20    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v20, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 263
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 52
    nop

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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
