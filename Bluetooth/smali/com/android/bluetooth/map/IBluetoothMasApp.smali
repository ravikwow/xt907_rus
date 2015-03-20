.class public interface abstract Lcom/android/bluetooth/map/IBluetoothMasApp;
.super Ljava/lang/Object;
.source "IBluetoothMasApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/IBluetoothMasApp$MessageNotificationListener;
    }
.end annotation


# static fields
.field public static final HANDLE_OFFSET:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0xd

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/map/IBluetoothMasApp;->HANDLE_OFFSET:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x8000000
        0x10000000
        0x18000000
        0x20000000
        0x28000000
        0x30000000
        0x38000000
        0x40000000
        0x48000000
        0x50000000
        0x58000000
        0x7fffffffffffffffL
    .end array-data
.end method


# virtual methods
.method public abstract checkPrecondition()Z
.end method

.method public abstract folderListing(Lcom/android/bluetooth/map/BluetoothMasAppParams;)Ljava/lang/String;
.end method

.method public abstract folderListingSize()I
.end method

.method public abstract getMasId()I
.end method

.method public abstract msg(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageRsp;
.end method

.method public abstract msgListing(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasMessageListingRsp;
.end method

.method public abstract msgStatus(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMasAppParams;)I
.end method

.method public abstract msgUpdate()I
.end method

.method public abstract notification(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMasAppParams;)I
.end method

.method public abstract onConnect()V
.end method

.method public abstract onDisconnect()V
.end method

.method public abstract pushMsg(Ljava/lang/String;Ljava/io/File;Lcom/android/bluetooth/map/BluetoothMasAppParams;)Lcom/android/bluetooth/map/MapUtils/CommonUtils$BluetoothMasPushMsgRsp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation
.end method

.method public abstract setPath(ZLjava/lang/String;)Z
.end method

.method public abstract stopMnsSession(Landroid/bluetooth/BluetoothDevice;)V
.end method
