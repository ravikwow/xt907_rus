.class Lcom/android/systemui/statusbar/phone/QuickSettings;
.super Ljava/lang/Object;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;
    }
.end annotation


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

.field mConfigSyncChargingStatus:Z

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDynamicSpannedTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsMultiSimEnabled:Z

.field private mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mMSimContext:Landroid/content/Context;

.field private mMirroringDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

.field private mNumPhones:I

.field private final mProfileReceiver:Landroid/content/BroadcastReceiver;

.field private mQueryCertTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mTilesSetUp:Z

.field mUseDefaultAvatar:Z

.field private mUserInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mIsMultiSimEnabled:Z

    .line 122
    iput v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mNumPhones:I

    .line 144
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mTilesSetUp:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUseDefaultAvatar:Z

    .line 147
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mConfigSyncChargingStatus:Z

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    .line 1523
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$35;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$35;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1582
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$36;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$36;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mMSimContext:Landroid/content/Context;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mConfigSyncChargingStatus:Z

    .line 168
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 173
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mIsMultiSimEnabled:Z

    .line 175
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mNumPhones:I

    .line 183
    :goto_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    .line 184
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .line 185
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    .line 186
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 187
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mHandler:Landroid/os/Handler;

    .line 191
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->deviceHasWirelessDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "com.motorola.wirelessdisplay.service.WIRELESS_DISPLAY_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v0, "com.motorola.wirelessdisplay.service.WIRELESS_DISPLAY_MIRRORING_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    :cond_0
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 209
    .local v3, "profileFilter":Landroid/content/IntentFilter;
    const-string v0, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 218
    return-void

    .line 177
    .end local v3    # "profileFilter":Landroid/content/IntentFilter;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mIsMultiSimEnabled:Z

    .line 179
    iput v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mNumPhones:I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mIsMultiSimEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/policy/LocationController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->showBugreportDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->applyBluetoothStatus()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/QuickSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->applyWirelessDisplayStatus(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mMirroringDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mMirroringDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/QuickSettings;ILandroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->applyWirelessDisplayMirrorStatus(ILandroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForSslCaCerts()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->collapsePanels()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->showBrightnessDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/QuickSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 13
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const v10, 0x7f040015

    const v12, 0x7f04000e

    const/4 v11, 0x0

    .line 494
    invoke-virtual {p2, v12, p1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 496
    .local v7, "wifiTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v8, 0x7f040017

    invoke-virtual {v7, v8, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 497
    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$7;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$7;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$8;

    invoke-direct {v8, p0, v7}, Lcom/android/systemui/statusbar/phone/QuickSettings$8;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 534
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v9, Lcom/android/systemui/statusbar/phone/QuickSettings$9;

    invoke-direct {v9, p0, v7}, Lcom/android/systemui/statusbar/phone/QuickSettings$9;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V

    invoke-virtual {v8, v7, v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addWifiTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 556
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 558
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->deviceHasMobileData()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 560
    invoke-virtual {p2, v12, p1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 562
    .local v5, "rssiTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    invoke-virtual {v5, v10, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 563
    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$10;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$10;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v9, Lcom/android/systemui/statusbar/phone/QuickSettings$11;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$11;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v8, v5, v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRSSITile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 799
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 803
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 805
    invoke-virtual {p2, v12, p1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 807
    .local v6, "rssiTile_2":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    invoke-virtual {v6, v10, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 808
    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$12;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$12;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 826
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v9, Lcom/android/systemui/statusbar/phone/QuickSettings$13;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$13;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v8, v6, v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRSSITile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 1055
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1064
    .end local v5    # "rssiTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .end local v6    # "rssiTile_2":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1100
    :goto_0
    invoke-virtual {p2, v12, p1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 1102
    .local v1, "batteryTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v8, 0x7f040011

    invoke-virtual {v1, v8, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 1103
    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$16;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$16;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v9, Lcom/android/systemui/statusbar/phone/QuickSettings$17;

    invoke-direct {v9, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings$17;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V

    invoke-virtual {v8, v1, v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBatteryTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 1161
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1164
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 1166
    .local v0, "airplaneTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v9, Lcom/android/systemui/statusbar/phone/QuickSettings$18;

    invoke-direct {v9, p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$18;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v8, v0, v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addAirplaneModeTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 1179
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1182
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->deviceSupportsBluetooth()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1235
    :goto_1
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 1237
    .local v3, "locationTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v8, 0x7f020035

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 1238
    const v8, 0x7f0b00a6

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setTextResource(I)V

    .line 1239
    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$22;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$22;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1246
    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$23;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$23;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1260
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v9, Lcom/android/systemui/statusbar/phone/QuickSettings$24;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings$24;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v8, v3, v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addLocationTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 1273
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1274
    return-void

    .line 1069
    .end local v0    # "airplaneTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    .end local v1    # "batteryTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .end local v3    # "locationTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    :cond_1
    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 1071
    .local v4, "rotationLockTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$14;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$14;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1078
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    new-instance v10, Lcom/android/systemui/statusbar/phone/QuickSettings$15;

    invoke-direct {v10, p0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettings$15;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRotationLockTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 1096
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1184
    .end local v4    # "rotationLockTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    .restart local v0    # "airplaneTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    .restart local v1    # "batteryTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 1186
    .local v2, "bluetoothTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$19;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$19;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1193
    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$20;

    invoke-direct {v8, p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettings$20;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1205
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v9, Lcom/android/systemui/statusbar/phone/QuickSettings$21;

    invoke-direct {v9, p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettings$21;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v8, v2, v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBluetoothTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 1231
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private addTemporaryTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v7, 0x1

    .line 1278
    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 1280
    .local v1, "alarmTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v5, 0x7f020024

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 1281
    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettings$25;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$25;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1287
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$26;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings$26;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v5, v1, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addAlarmTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 1296
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1299
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 1301
    .local v3, "remoteDisplayTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettings$27;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$27;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1321
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    invoke-direct {v6, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;->setShowWhenEnabled(Z)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRemoteDisplayTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 1324
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1328
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->deviceHasWirelessDisplay()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1329
    const v5, 0x7f04000e

    const/4 v6, 0x0

    invoke-virtual {p2, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 1331
    .local v0, "WirelessDisplayTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v5, 0x7f040018

    invoke-virtual {v0, v5, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 1335
    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettings$28;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$28;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1344
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$29;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$29;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v5, v0, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addWirelessDisplayTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 1357
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1384
    .end local v0    # "WirelessDisplayTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 1386
    .local v2, "bugreportTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v5, 0x108058e

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 1387
    const v5, 0x10400c9

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setTextResource(I)V

    .line 1388
    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettings$31;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$31;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1395
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$32;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$32;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v5, v2, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBugreportTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 1401
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1420
    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1422
    .local v4, "sslCaCertWarningTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettings$33;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$33;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1430
    const v5, 0x10803b1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 1432
    const v5, 0x7f0b00b6

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setTextResource(I)V

    .line 1434
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    invoke-direct {v6, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;->setShowWhenEnabled(Z)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addSslCaCertWarningTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 1437
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1438
    return-void
.end method

.method private addUserTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 406
    const v3, 0x7f04000e

    const/4 v4, 0x0

    invoke-virtual {p2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 408
    .local v2, "userTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v3, 0x7f040016

    invoke-virtual {v2, v3, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 409
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addUserTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 458
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 459
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 464
    .local v0, "brightnessTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v3, 0x7f020029

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 465
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$5;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBrightnessTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 474
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 475
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 479
    .local v1, "settingsTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v3, 0x7f020037

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 480
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$6;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    invoke-direct {v4, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addSettingsTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 488
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 489
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    return-void
.end method

.method private applyBluetoothStatus()V
    .locals 2

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V

    .line 1506
    return-void
.end method

.method private applyLocationEnabledStatus()V
    .locals 2

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onLocationSettingsChanged(Z)V

    .line 1510
    return-void
.end method

.method private applyWirelessDisplayMirrorStatus(ILandroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "mirroringDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onWirelessDisplayMirrorStateChanged(ILandroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1501
    return-void
.end method

.method private applyWirelessDisplayStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onWirelessDisplayStateChanged(I)V

    .line 1497
    return-void
.end method

.method private collapsePanels()V
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 391
    return-void
.end method

.method private queryForSslCaCerts()V
    .locals 2

    .prologue
    .line 259
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mQueryCertTask:Landroid/os/AsyncTask;

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mQueryCertTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 276
    return-void
.end method

.method private queryForUserInformation()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, "currentUserContext":Landroid/content/Context;
    const/4 v4, 0x0

    .line 282
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 283
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    const-string v7, "android"

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 294
    :goto_0
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    .line 295
    .local v3, "userId":I
    iget-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 297
    .local v5, "userName":Ljava/lang/String;
    move-object v0, v1

    .line 298
    .local v0, "context":Landroid/content/Context;
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$2;

    invoke-direct {v6, p0, v5, v3, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 364
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    new-array v7, v11, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 365
    return-void

    .line 288
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "userId":I
    .end local v5    # "userName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "QuickSettings"

    const-string v7, "Couldn\'t create user context"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 291
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 292
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "QuickSettings"

    const-string v7, "Couldn\'t get user info"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setupQuickSettings()V
    .locals 2

    .prologue
    .line 369
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 371
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addUserTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 372
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 373
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addTemporaryTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V

    .line 376
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForSslCaCerts()V

    .line 377
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mTilesSetUp:Z

    .line 378
    return-void
.end method

.method private showBrightnessDialog()V
    .locals 2

    .prologue
    .line 1457
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1458
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1459
    return-void
.end method

.method private showBugreportDialog()V
    .locals 4

    .prologue
    .line 1462
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1463
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x104040b

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$34;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$34;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1482
    const v2, 0x10400ca

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1483
    const v2, 0x10400c9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1484
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1485
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1486
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1488
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1492
    return-void

    .line 1489
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private startSettingsActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 386
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;Z)V

    .line 387
    return-void
.end method

.method private startSettingsActivity(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z

    .prologue
    .line 394
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 397
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_1
    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->collapsePanels()V

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private startSettingsActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 381
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    .line 383
    return-void
.end method


# virtual methods
.method public getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method reloadUserInfo()V
    .locals 2

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 1517
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mTilesSetUp:Z

    if-eqz v0, :cond_1

    .line 1518
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V

    .line 1519
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForSslCaCerts()V

    .line 1521
    :cond_1
    return-void
.end method

.method setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PanelBar;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 222
    return-void
.end method

.method public setImeWindowStatus(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onImeWindowStatusChanged(Z)V

    .line 234
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 226
    return-void
.end method

.method setup(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;)V
    .locals 1
    .param p1, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p2, "bluetoothController"    # Lcom/android/systemui/statusbar/policy/BluetoothController;
    .param p3, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;
    .param p4, "locationController"    # Lcom/android/systemui/statusbar/policy/LocationController;
    .param p5, "rotationLockController"    # Lcom/android/systemui/statusbar/policy/RotationLockController;

    .prologue
    .line 243
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 244
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 245
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 247
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setupQuickSettings()V

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->updateResources()V

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->applyLocationEnabledStatus()V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addStateChangedCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/policy/LocationController;->addSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p5, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->addRotationLockControllerCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    .line 256
    return-void
.end method

.method updateResources()V
    .locals 5

    .prologue
    .line 1441
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1444
    .local v1, "r":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateResources()V

    .line 1447
    const v4, 0x7f0c000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1448
    .local v2, "span":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 1449
    .local v3, "v":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColumnSpan(I)V

    goto :goto_0

    .line 1451
    .end local v3    # "v":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    check-cast v4, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    .line 1452
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1453
    return-void
.end method
