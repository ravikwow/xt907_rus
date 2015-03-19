.class Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceFoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/bluetooth/BluetoothEventManager;
    .param p2, "x1"    # Lcom/android/settings/bluetooth/BluetoothEventManager$1;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v9, 0x1

    .line 204
    const-string v6, "android.bluetooth.device.extra.RSSI"

    const/16 v7, -0x8000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v5

    .line 205
    .local v5, "rssi":S
    const-string v6, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothClass;

    .line 206
    .local v1, "btClass":Landroid/bluetooth/BluetoothClass;
    const-string v6, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "name":Ljava/lang/String;
    const-string v6, "android.bluetooth.device.extra.DEVICE_ID"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "deviceId":Ljava/lang/String;
    const-string v6, "android.bluetooth.device.extra.EXTRA_ICON"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "appearance":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 216
    .local v2, "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v2, :cond_0

    .line 217
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v7}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1000(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v8}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 218
    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    # invokes: Lcom/android/settings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    invoke-static {v6, v2}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1500(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 224
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1

    .line 225
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    # invokes: Lcom/android/settings/bluetooth/BluetoothEventManager;->correctByteOrderDeviceId(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1600(Lcom/android/settings/bluetooth/BluetoothEventManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v9}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->updateDualControllerFlag(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Ljava/lang/String;Z)V

    .line 231
    :cond_1
    invoke-virtual {v2, v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    .line 232
    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 233
    invoke-virtual {v2, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v2, v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 236
    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setDeviceId(Ljava/lang/String;)V

    .line 239
    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setBtIconAppearance(Ljava/lang/String;)V

    .line 243
    :cond_2
    return-void
.end method
