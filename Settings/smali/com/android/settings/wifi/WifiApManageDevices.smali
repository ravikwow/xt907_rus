.class public Lcom/android/settings/wifi/WifiApManageDevices;
.super Landroid/preference/PreferenceActivity;
.source "WifiApManageDevices.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;,
        Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;,
        Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;
    }
.end annotation


# static fields
.field private static mAllowAllDevices:Landroid/preference/CheckBoxPreference;

.field private static mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

.field private static mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

.field public static mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

.field private static mContext:Landroid/content/Context;

.field private static mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

.field private static mSharedPrefs:Landroid/content/SharedPreferences;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field private static mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;


# instance fields
.field private final MAX_DEVICES_KEY:Ljava/lang/String;

.field private mAllowedDevicePref:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

.field private mMaxDevicePref:Landroid/preference/Preference;

.field private mRes:Landroid/content/res/Resources;

.field private mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    .line 74
    sput-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 75
    sput-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 65
    const-string v0, "max_devices"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->MAX_DEVICES_KEY:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 86
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    .line 767
    return-void
.end method

.method static synthetic access$000()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApManageDevices;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApManageDevices;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApManageDevices;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApManageDevices;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApManageDevices;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApManageDevices;->invokeServiceToUnBlackList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Lcom/android/settings/wifi/WifiProgressCategory;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApManageDevices;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static addConnectedDeviceToScreen(Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 6
    .param p0, "c"    # Lcom/android/settings/wifi/ConnectedDevice;

    .prologue
    .line 373
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 374
    new-instance v0, Lcom/android/settings/wifi/ConnectedDevice;

    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/ConnectedDevice;->mConnectTime:Landroid/text/format/Time;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)V

    .line 379
    .local v0, "newDev":Lcom/android/settings/wifi/ConnectedDevice;
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 380
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->dismiss()V

    .line 384
    .end local v0    # "newDev":Lcom/android/settings/wifi/ConnectedDevice;
    :cond_0
    return-void
.end method

.method private cleanAllPreviousDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 506
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->dismiss()V

    .line 508
    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    .line 511
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->dismiss()V

    .line 513
    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    .line 516
    :cond_1
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->dismiss()V

    .line 518
    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 523
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    .line 526
    :cond_3
    return-void
.end method

.method public static cleanWhiteList(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 529
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 530
    sget-object v8, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    .line 531
    .local v7, "whiteList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v8, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 532
    .local v6, "spedit":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 533
    .local v1, "commit":Z
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 534
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 535
    .local v5, "mac":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 536
    .local v2, "devName":Ljava/lang/String;
    const-string v8, "--DIS"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 537
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, "--DIS"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "cleanMac":Ljava/lang/String;
    invoke-interface {v6, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 539
    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 540
    const/4 v1, 0x1

    goto :goto_0

    .line 543
    .end local v0    # "cleanMac":Ljava/lang/String;
    .end local v2    # "devName":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "mac":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 544
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 547
    .end local v1    # "commit":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "spedit":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "whiteList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private static getAllAllowedDeviceFromSharedPrefs(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->initPrefs(Landroid/content/Context;)V

    .line 439
    sget-object v4, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 440
    .local v1, "devList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 441
    .local v0, "arlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 442
    const-string v4, "wifi_ap_allow_all_devices"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 444
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 445
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 446
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 447
    .local v3, "s":Ljava/lang/String;
    const-string v4, "--DIS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 448
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 451
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 452
    const-string v4, "ff:ff:ff:ff:ff:ff"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 458
    return-object v0

    .line 455
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private static initPrefs(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    sget-object v6, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v6, :cond_4

    .line 408
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    sput-object v6, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 409
    const-string v6, "WIFI_AP_ALLOWED_DEVICE_SHARED_PREF"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    sput-object v6, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 410
    sget-object v6, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 411
    .local v2, "deviceList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "wifi_ap_allow_all_devices"

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 412
    :cond_0
    sget-object v6, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "wifi_ap_allow_all_devices"

    const-string v8, "TRUE"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 415
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 416
    .local v0, "arlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 417
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 418
    .local v5, "spedit":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 419
    .local v1, "commit":Z
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 420
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 421
    .local v4, "s":Ljava/lang/String;
    const-string v6, "wifi_ap_allow_all_devices"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}.*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 422
    const-string v6, "WifiApManageDevices"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad entry "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " found in shared preference - deleting it!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-interface {v5, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 424
    const/4 v1, 0x1

    goto :goto_0

    .line 427
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 428
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 430
    .end local v0    # "arlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "commit":Z
    .end local v2    # "deviceList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "spedit":Landroid/content/SharedPreferences$Editor;
    :cond_4
    return-void
.end method

.method private invokeServiceToUnBlackList(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 496
    new-instance v0, Landroid/content/Intent;

    const-string v1, "unblacklist_mac"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/WifiApInfoService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    if-eqz p1, :cond_0

    .line 499
    const-string v1, "mac_string"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 503
    return-void
.end method

.method public static isWhiteListAllEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 433
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->initPrefs(Landroid/content/Context;)V

    .line 434
    const-string v0, "TRUE"

    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "wifi_ap_allow_all_devices"

    const-string v3, "TRUE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeConnectedDeviceFromScreen(Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 1
    .param p0, "c"    # Lcom/android/settings/wifi/ConnectedDevice;

    .prologue
    .line 387
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_1

    .line 388
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->access$200(Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;)Lcom/android/settings/wifi/ConnectedDevice;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/ConnectedDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->dismiss()V

    .line 391
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 393
    :cond_1
    return-void
.end method

.method public static setAllowIfWhiteMac(ZLjava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .param p0, "enable"    # Z
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 551
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 552
    .local v4, "whiteList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p1

    .line 553
    .local v2, "removeMac":Ljava/lang/String;
    move-object v0, p1

    .line 554
    .local v0, "addMac":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 555
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--DIS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 559
    :goto_0
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 561
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    if-eqz v5, :cond_0

    .line 562
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v5, p1}, Lcom/android/settings/wifi/WifiProgressCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 564
    :cond_0
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 565
    .local v3, "spedit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 566
    .local v1, "devName":Ljava/lang/String;
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 567
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 568
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 569
    const/4 v5, 0x1

    .line 571
    .end local v1    # "devName":Ljava/lang/String;
    .end local v3    # "spedit":Landroid/content/SharedPreferences$Editor;
    :goto_1
    return v5

    .line 557
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--DIS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 571
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static setApAllowedDeviceConfig(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x1

    .line 462
    const-string v1, "WifiApManageDevices"

    const-string v2, "Entered setApAllowedDeviceConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->getAllAllowedDeviceFromSharedPrefs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 464
    .local v0, "devList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 465
    const-string v1, "WifiApManageDevices"

    const-string v2, "setApAllowedDeviceConfig: dev list is not empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 467
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0, v3}, Landroid/net/wifi/WifiManager;->manageSta(Ljava/util/List;Z)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    const-string v1, "WifiApManageDevices"

    const-string v2, "setApAllowedDeviceConfig: dev list is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 473
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->manageSta(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public static updateConnectedDevice(Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 3
    .param p0, "c"    # Lcom/android/settings/wifi/ConnectedDevice;

    .prologue
    .line 396
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    if-eqz v1, :cond_0

    .line 397
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    iget-object v2, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiProgressCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    .line 398
    .local v0, "dev":Lcom/android/settings/wifi/ConnectedDevice;
    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    .line 400
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 401
    invoke-virtual {v0}, Lcom/android/settings/wifi/ConnectedDevice;->updateDisplay()V

    .line 404
    .end local v0    # "dev":Lcom/android/settings/wifi/ConnectedDevice;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 124
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    if-eqz p1, :cond_0

    .line 127
    const-string v1, "edit_mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "edit_mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0, v13}, Lcom/android/settings/wifi/WifiApManageDevices;->showDialog(I)V

    .line 133
    :cond_0
    const-string v1, "WifiApManageDevices"

    const-string v2, "Launching WifiApManageDevices"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const v1, 0x7f050047

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApManageDevices;->addPreferencesFromResource(I)V

    .line 135
    const-string v1, "wifi_ap_connected_devices"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApManageDevices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiProgressCategory;

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    .line 136
    sput-object p0, Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/wifi/WifiApDefaults;->UNKNOWN_STA_NAME:Ljava/lang/String;

    .line 142
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    if-eqz v1, :cond_1

    .line 143
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1, v13}, Lcom/android/settings/wifi/WifiProgressCategory;->setOrderingAsAdded(Z)V

    .line 144
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1, v12}, Lcom/android/settings/wifi/WifiProgressCategory;->setProgress(Z)V

    .line 145
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiProgressCategory;->removeAll()V

    .line 146
    sget-object v1, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    .line 147
    .local v0, "c":Lcom/android/settings/wifi/ConnectedDevice;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->addConnectedDeviceToScreen(Lcom/android/settings/wifi/ConnectedDevice;)V

    goto :goto_0

    .line 150
    .end local v0    # "c":Lcom/android/settings/wifi/ConnectedDevice;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v1, "max_devices"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApManageDevices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mMaxDevicePref:Landroid/preference/Preference;

    .line 151
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mMaxDevicePref:Landroid/preference/Preference;

    if-eqz v1, :cond_4

    .line 152
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mMaxDevicePref:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mMaxDevicePref:Landroid/preference/Preference;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 157
    :goto_1
    const-string v1, "wifi_ap_allow_device"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApManageDevices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevicePref:Landroid/preference/Preference;

    .line 158
    const-string v1, "wifi_ap_allowed_devices"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApManageDevices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiProgressCategory;

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    .line 159
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevicePref:Landroid/preference/Preference;

    if-nez v1, :cond_5

    .line 160
    :cond_2
    const-string v1, "WifiApManageDevices"

    const-string v2, "Got mAllowedDevices == nULL - bailing out"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->finish()V

    .line 235
    :cond_3
    :goto_2
    return-void

    .line 155
    :cond_4
    const-string v1, "WifiApManageDevices"

    const-string v2, "Got mMaxDevicePref = NUll- something wrong!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    :cond_5
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1, v13}, Lcom/android/settings/wifi/WifiProgressCategory;->setOrderingAsAdded(Z)V

    .line 165
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1, v12}, Lcom/android/settings/wifi/WifiProgressCategory;->setProgress(Z)V

    .line 166
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->initPrefs(Landroid/content/Context;)V

    .line 167
    const-string v1, "wifi_ap_allow_all_devices"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApManageDevices;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    .line 168
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_6

    .line 169
    const-string v1, "WifiApManageDevices"

    const-string v2, "Got mAllowAllDevices  == nULL - bailing out"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->finish()V

    goto :goto_2

    .line 173
    :cond_6
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 175
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v10

    .line 176
    .local v10, "savedAllowedDevices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "wifi_ap_allow_all_devices"

    invoke-interface {v10, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 178
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 179
    .local v7, "dev":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 180
    .local v4, "mac":Ljava/lang/String;
    const/4 v9, 0x1

    .line 181
    .local v9, "macEnable":Z
    const-string v1, "--DIS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 182
    const/4 v9, 0x0

    .line 183
    const-string v1, "--DIS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 185
    :cond_7
    new-instance v0, Lcom/android/settings/wifi/ConnectedDevice;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)V

    .line 186
    .restart local v0    # "c":Lcom/android/settings/wifi/ConnectedDevice;
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1, v4}, Lcom/android/settings/wifi/WifiProgressCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 188
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    sget-object v2, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiProgressCategory;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "wifi_ap_allow_all_devices"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto :goto_3

    .line 190
    .end local v0    # "c":Lcom/android/settings/wifi/ConnectedDevice;
    .end local v4    # "mac":Ljava/lang/String;
    .end local v7    # "dev":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "macEnable":Z
    :cond_8
    invoke-virtual {p0, v13}, Lcom/android/settings/wifi/WifiApManageDevices;->updateAllowAllPref(Z)V

    .line 195
    .end local v8    # "i$":Ljava/util/Iterator;
    :goto_4
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;

    .line 198
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApManageDevices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 202
    .local v11, "startIntent":Landroid/content/Intent;
    if-eqz v11, :cond_3

    .line 203
    const-string v1, "android.net.wifi.PBC_CONNECTION_REQUEST_NEW"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 204
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v6, "alertDlg":Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 207
    const v1, 0x7f0b00bb

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 208
    const v1, 0x7f0b00bc

    new-instance v2, Lcom/android/settings/wifi/WifiApManageDevices$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApManageDevices$3;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    const v1, 0x7f0b00bd

    new-instance v2, Lcom/android/settings/wifi/WifiApManageDevices$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApManageDevices$4;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 193
    .end local v6    # "alertDlg":Landroid/app/AlertDialog$Builder;
    .end local v11    # "startIntent":Landroid/content/Intent;
    :cond_9
    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiApManageDevices;->updateAllowAllPref(Z)V

    goto :goto_4

    .line 227
    .restart local v11    # "startIntent":Landroid/content/Intent;
    :cond_a
    const-string v1, "android.net.wifi.PBC_INITIATE"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->cleanAllPreviousDialog()V

    .line 229
    new-instance v1, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    .line 230
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->show()V

    goto/16 :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    const/4 v0, 0x0

    .line 248
    packed-switch p1, :pswitch_data_0

    .line 262
    :goto_0
    return-object v0

    .line 250
    :pswitch_0
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    if-eqz v1, :cond_0

    .line 251
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->dismiss()V

    .line 252
    sput-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;

    .line 255
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    if-nez v0, :cond_1

    .line 256
    new-instance v0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    .line 257
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->show()V

    .line 259
    :cond_1
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 280
    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    .line 281
    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    .line 283
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->cleanAllPreviousDialog()V

    .line 284
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 285
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 97
    if-eqz p1, :cond_0

    const-string v1, "android.net.wifi.PBC_CONNECTION_REQUEST_NEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "alertDlg":Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 101
    const v1, 0x7f0b00bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 102
    const v1, 0x7f0b00bc

    new-instance v2, Lcom/android/settings/wifi/WifiApManageDevices$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApManageDevices$1;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    const v1, 0x7f0b00bd

    new-instance v2, Lcom/android/settings/wifi/WifiApManageDevices$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApManageDevices$2;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 119
    .end local v0    # "alertDlg":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 313
    const-string v5, "max_devices"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 314
    const/4 v3, 0x0

    .line 316
    .local v3, "maxDevices":I
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 326
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 327
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 328
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v5, :cond_0

    .line 329
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    if-eq v5, v3, :cond_0

    .line 330
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v3, v5, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    .line 332
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 335
    .local v4, "r":Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings/wifi/WifiApManageDevices$5;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApManageDevices$5;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;)V

    .line 351
    .local v2, "hotspotRestartWarningListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    .line 352
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v6, 0x7f0b00a8

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 354
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v6, 0x7f0b00a7

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    const v7, 0x7f0b00a9

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 357
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v6, 0x7f0b00aa

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 358
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 369
    .end local v2    # "hotspotRestartWarningListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v3    # "maxDevices":I
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    :goto_1
    const/4 v5, 0x1

    return v5

    .line 317
    .restart local v3    # "maxDevices":I
    .restart local p1    # "preference":Landroid/preference/Preference;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "WifiApManageDevices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check your xml file!! Poor array value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "recieved - ignore set "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 360
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1

    .line 364
    .end local v3    # "maxDevices":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_0

    .line 365
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "wifi_ap_allow_all_devices"

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "FALSE"

    :goto_2
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiApManageDevices;->invokeServiceToUnBlackList(Ljava/lang/String;)V

    goto :goto_1

    .line 365
    :cond_3
    const-string v5, "TRUE"

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 289
    instance-of v1, p2, Lcom/android/settings/wifi/ConnectedDevice;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi_ap_manage_devices_screen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->cleanAllPreviousDialog()V

    .line 292
    new-instance v1, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    check-cast p2, Lcom/android/settings/wifi/ConnectedDevice;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-direct {v1, p0, p0, p2}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;Lcom/android/settings/wifi/ConnectedDevice;)V

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    .line 293
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->show()V

    .line 309
    :goto_0
    return v0

    .line 295
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevicePref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 296
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->cleanAllPreviousDialog()V

    .line 298
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices;->removeDialog(I)V

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices;->showDialog(I)V

    goto :goto_0

    .line 302
    :cond_1
    instance-of v1, p2, Lcom/android/settings/wifi/ConnectedDevice;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi_ap_manage_allowed_devices_screen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->cleanAllPreviousDialog()V

    .line 305
    new-instance v1, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    check-cast p2, Lcom/android/settings/wifi/ConnectedDevice;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-direct {v1, p0, p0, p2}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;Lcom/android/settings/wifi/ConnectedDevice;)V

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    .line 306
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->show()V

    goto :goto_0

    .line 309
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 241
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "edit_mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 487
    const-string v1, "WifiApManageDevices"

    const-string v2, "Entered onSharedPreferenceChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->setApAllowedDeviceConfig(Landroid/content/Context;)V

    .line 490
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disassociateSta()V

    .line 492
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices;->updateAllowAllPref(Z)V

    .line 493
    return-void

    .line 492
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 271
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    .line 272
    const-string v0, "WifiApManageDevices"

    const-string v1, "HOME key pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->finish()V

    .line 274
    return-void
.end method

.method public updateAllowAllPref(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 479
    sget-object v2, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 480
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 481
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevicePref:Landroid/preference/Preference;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 482
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiProgressCategory;->setEnabled(Z)V

    .line 483
    return-void

    :cond_1
    move v0, v1

    .line 479
    goto :goto_0

    .line 481
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
