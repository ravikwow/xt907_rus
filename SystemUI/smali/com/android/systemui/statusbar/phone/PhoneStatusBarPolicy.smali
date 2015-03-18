.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"


# static fields
.field private static final sBluetoothBatteryChargeAnimation:[I

.field private static final sBluetoothBatteryChargeImages:[I

.field private static final sWifiSignalImages:[[I


# instance fields
.field private bthfBattStatus:I

.field private bthfChargeStatus:I

.field private mBluetoothConnectedStateIcon:I

.field private mBluetoothEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInetCondition:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWifiConnected:Z

.field private mLastWifiSignalLevel:I

.field private final mService:Landroid/app/StatusBarManager;

.field mSimState:[Lcom/android/internal/telephony/IccCard$State;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mVolumeVisible:Z

.field private updateBthfBattStatus:Z

.field private updateBthfChargingStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 108
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBluetoothBatteryChargeImages:[I

    .line 114
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBluetoothBatteryChargeAnimation:[I

    .line 123
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sWifiSignalImages:[[I

    return-void

    .line 108
    nop

    :array_0
    .array-data 4
        0x7f0200ce
        0x7f0200c9
        0x7f0200c8
        0x7f0200d4
    .end array-data

    .line 114
    :array_1
    .array-data 4
        0x7f0200d2
        0x7f0200d1
        0x7f0200d0
        0x7f0200d4
    .end array-data

    .line 123
    :array_2
    .array-data 4
        0x7f0200a5
        0x7f0200a7
        0x7f0200a9
        0x7f0200ab
    .end array-data

    :array_3
    .array-data 4
        0x7f0200a6
        0x7f0200a8
        0x7f0200aa
        0x7f0200ac
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 136
    iput v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLastWifiSignalLevel:I

    .line 137
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsWifiConnected:Z

    .line 140
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mInetCondition:I

    .line 146
    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 179
    const-string v5, "statusbar"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 182
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v5, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v5, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v5, "android.bluetooth.headset.profile.action.HFBATTERY_STATUS_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v5, "android.bluetooth.headset.profile.action.HFCHARGE_STATUS_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v5, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v5, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v2, v9, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 197
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v4

    .line 198
    .local v4, "numPhones":I
    new-array v5, v4, [Lcom/android/internal/telephony/IccCard$State;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    .line 199
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 200
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    sget-object v7, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v7, v5, v3

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_0
    const-string v5, "storage"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 204
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v7, Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {v7, p1}, Lcom/android/systemui/usb/StorageNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 208
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "tty"

    const v8, 0x7f02009f

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 209
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "tty"

    invoke-virtual {v5, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 212
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "cdma_eri"

    const v8, 0x7f02008a

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 213
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "cdma_eri"

    invoke-virtual {v5, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 216
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 217
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const v1, 0x7f02006c

    .line 219
    .local v1, "bluetoothIcon":I
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothConnectedStateIcon:I

    .line 221
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v7, 0xc

    if-ne v5, v7, :cond_2

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 223
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    .line 224
    const v1, 0x7f02006d

    .line 227
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "bluetooth"

    invoke-virtual {v5, v7, v1, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 228
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "bluetooth"

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v5, v7, v8}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 231
    iput v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfBattStatus:I

    .line 232
    iput v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfChargeStatus:I

    .line 234
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBthfBattStatus:Z

    .line 235
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBthfChargingStatus:Z

    .line 240
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "alarm_clock"

    const v8, 0x7f020059

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 241
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "alarm_clock"

    invoke-virtual {v5, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 244
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "sync_active"

    const v8, 0x7f02009d

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 245
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "sync_failing"

    const v8, 0x7f02009e

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 246
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "sync_active"

    invoke-virtual {v5, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 247
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "sync_failing"

    invoke-virtual {v5, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 250
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "volume"

    const v8, 0x7f020088

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 251
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "volume"

    invoke-virtual {v5, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolume()V

    .line 253
    return-void

    :cond_2
    move v5, v6

    .line 222
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolume()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 256
    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 257
    .local v0, "alarmSet":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 258
    return-void
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 327
    const v2, 0x7f02006c

    .line 328
    .local v2, "iconId":I
    const/4 v1, 0x0

    .line 329
    .local v1, "contentDescription":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 331
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x80000000

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 332
    .local v3, "state":I
    const/16 v4, 0xc

    if-ne v3, v4, :cond_5

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    .line 377
    .end local v3    # "state":I
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBthfBattStatus:Z

    if-ne v4, v5, :cond_1

    .line 378
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfBattStatus:I

    if-nez v4, :cond_b

    .line 379
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBluetoothBatteryChargeImages:[I

    aget v2, v4, v6

    .line 389
    :cond_1
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBthfChargingStatus:Z

    if-ne v4, v5, :cond_3

    .line 390
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfChargeStatus:I

    if-nez v4, :cond_11

    .line 391
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfBattStatus:I

    if-nez v4, :cond_e

    .line 392
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBluetoothBatteryChargeImages:[I

    aget v2, v4, v6

    .line 401
    :cond_2
    :goto_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBthfChargingStatus:Z

    .line 415
    :cond_3
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "bluetooth"

    invoke-virtual {v4, v5, v2, v6, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 416
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v5, "bluetooth"

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v4, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 418
    :cond_4
    return-void

    .restart local v3    # "state":I
    :cond_5
    move v4, v6

    .line 332
    goto :goto_0

    .line 333
    .end local v3    # "state":I
    :cond_6
    const-string v4, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 334
    const-string v4, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 336
    .restart local v3    # "state":I
    if-ne v3, v8, :cond_7

    .line 337
    const v2, 0x7f02006d

    .line 338
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f0a003e

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    const v4, 0x7f02006d

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothConnectedStateIcon:I

    goto :goto_1

    .line 343
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f0a003f

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 346
    const v4, 0x7f02006c

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothConnectedStateIcon:I

    goto :goto_1

    .line 350
    .end local v3    # "state":I
    :cond_8
    const-string v4, "android.bluetooth.headset.profile.action.HFBATTERY_STATUS_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 351
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBthfBattStatus:Z

    .line 352
    const-string v4, "android.bluetooth.headset.extra.HFBATTERY_STATUS"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfBattStatus:I

    goto :goto_1

    .line 354
    :cond_9
    const-string v4, "android.bluetooth.headset.profile.action.HFCHARGE_STATUS_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 355
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBthfChargingStatus:Z

    .line 356
    const-string v4, "android.bluetooth.headset.extra.HFCHARGE_STATUS"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfChargeStatus:I

    goto/16 :goto_1

    .line 360
    :cond_a
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 361
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 363
    .restart local v3    # "state":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothConnectedStateIcon:I

    .line 365
    if-nez v3, :cond_0

    .line 366
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBthfBattStatus:Z

    .line 367
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBthfChargingStatus:Z

    goto/16 :goto_1

    .line 380
    .end local v3    # "state":I
    :cond_b
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfBattStatus:I

    if-ne v4, v5, :cond_c

    .line 381
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBluetoothBatteryChargeImages:[I

    aget v2, v4, v5

    goto/16 :goto_2

    .line 382
    :cond_c
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfBattStatus:I

    if-ne v4, v8, :cond_d

    .line 383
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBluetoothBatteryChargeImages:[I

    aget v2, v4, v8

    goto/16 :goto_2

    .line 384
    :cond_d
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfBattStatus:I

    if-ne v4, v9, :cond_1

    .line 385
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBluetoothBatteryChargeImages:[I

    aget v2, v4, v9

    goto/16 :goto_2

    .line 393
    :cond_e
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfBattStatus:I

    if-ne v4, v5, :cond_f

    .line 394
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBluetoothBatteryChargeImages:[I

    aget v2, v4, v5

    goto/16 :goto_3

    .line 395
    :cond_f
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfBattStatus:I

    if-ne v4, v8, :cond_10

    .line 396
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBluetoothBatteryChargeImages:[I

    aget v2, v4, v8

    goto/16 :goto_3

    .line 397
    :cond_10
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfBattStatus:I

    if-ne v4, v9, :cond_2

    .line 398
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBluetoothBatteryChargeImages:[I

    aget v2, v4, v9

    goto/16 :goto_3

    .line 403
    :cond_11
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfChargeStatus:I

    if-ne v4, v5, :cond_3

    .line 404
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfBattStatus:I

    if-nez v4, :cond_12

    .line 405
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBluetoothBatteryChargeAnimation:[I

    aget v2, v4, v6

    goto/16 :goto_4

    .line 406
    :cond_12
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfBattStatus:I

    if-ne v4, v5, :cond_13

    .line 407
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBluetoothBatteryChargeAnimation:[I

    aget v2, v4, v5

    goto/16 :goto_4

    .line 408
    :cond_13
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfBattStatus:I

    if-ne v4, v8, :cond_14

    .line 409
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBluetoothBatteryChargeAnimation:[I

    aget v2, v4, v8

    goto/16 :goto_4

    .line 410
    :cond_14
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->bthfBattStatus:I

    if-ne v4, v9, :cond_3

    .line 411
    sget-object v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sBluetoothBatteryChargeAnimation:[I

    aget v2, v4, v8

    goto/16 :goto_4
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 271
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "stateExtra":Ljava/lang/String;
    const-string v4, "subscription"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 274
    .local v3, "sub":I
    const-string v4, "PhoneStatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState for subscription :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v4, "ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .line 298
    .local v1, "simState":Lcom/android/internal/telephony/IccCard$State;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:[Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v4, v3

    .line 299
    return-void

    .line 278
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    :cond_0
    const-string v4, "CARD_IO_ERROR"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 281
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    :cond_1
    const-string v4, "READY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 282
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 284
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    const-string v4, "LOCKED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 285
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 287
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 289
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    :cond_3
    const-string v4, "PUK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 290
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 293
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 296
    .end local v0    # "lockedReason":Ljava/lang/String;
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 261
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 421
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "action":Ljava/lang/String;
    const-string v2, "ttyEnabled"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 426
    .local v1, "enabled":Z
    if-eqz v1, :cond_0

    .line 429
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "tty"

    const v4, 0x7f02009f

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0069

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v7, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "tty"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "tty"

    invoke-virtual {v2, v3, v7}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateVolume()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 302
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 303
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 304
    .local v3, "ringerMode":I
    if-eqz v3, :cond_0

    if-ne v3, v6, :cond_3

    :cond_0
    move v4, v6

    .line 308
    .local v4, "visible":Z
    :goto_0
    const/4 v1, 0x0

    .line 309
    .local v1, "contentDescription":Ljava/lang/String;
    if-ne v3, v6, :cond_4

    .line 310
    const v2, 0x7f020089

    .line 311
    .local v2, "iconId":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f0a006a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    :goto_1
    if-eqz v4, :cond_1

    .line 318
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v7, "volume"

    invoke-virtual {v6, v7, v2, v5, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 320
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    if-eq v4, v5, :cond_2

    .line 321
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v6, "volume"

    invoke-virtual {v5, v6, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 322
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    .line 324
    :cond_2
    return-void

    .end local v1    # "contentDescription":Ljava/lang/String;
    .end local v2    # "iconId":I
    .end local v4    # "visible":Z
    :cond_3
    move v4, v5

    .line 304
    goto :goto_0

    .line 313
    .restart local v1    # "contentDescription":Ljava/lang/String;
    .restart local v4    # "visible":Z
    :cond_4
    const v2, 0x7f020088

    .line 314
    .restart local v2    # "iconId":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f0a006b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
