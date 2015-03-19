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

    .line 765
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
    .line 379
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 380
    new-instance v0, Lcom/android/settings/wifi/ConnectedDevice;

    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/ConnectedDevice;->mConnectTime:Landroid/text/format/Time;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)V

    .line 385
    .local v0, "newDev":Lcom/android/settings/wifi/ConnectedDevice;
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 386
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 390
    .end local v0    # "newDev":Lcom/android/settings/wifi/ConnectedDevice;
    :cond_0
    return-void
.end method

.method private cleanAllPreviousDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 497
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 499
    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    .line 502
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 504
    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    .line 507
    :cond_1
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 509
    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 513
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 514
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    .line 517
    :cond_3
    return-void
.end method

.method public static cleanWhiteList(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 520
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 521
    sget-object v8, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    .line 522
    .local v7, "whiteList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v8, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 523
    .local v6, "spedit":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 524
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

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 525
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 527
    .local v5, "mac":Ljava/lang/String;
    const-string v8, "wifi_ap_allow_all_devices"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "--DIS"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x11

    if-lt v8, v9, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 533
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 534
    .local v2, "devName":Ljava/lang/String;
    const-string v8, "--DIS"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 535
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, "--DIS"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "cleanMac":Ljava/lang/String;
    invoke-interface {v6, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 537
    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 538
    const/4 v1, 0x1

    goto :goto_0

    .line 541
    .end local v0    # "cleanMac":Ljava/lang/String;
    .end local v2    # "devName":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "mac":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    .line 542
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 545
    .end local v1    # "commit":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "spedit":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "whiteList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
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
    .line 429
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->initPrefs(Landroid/content/Context;)V

    .line 430
    sget-object v4, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 431
    .local v1, "devList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 432
    .local v0, "arlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 433
    const-string v4, "wifi_ap_allow_all_devices"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 435
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 436
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 438
    .local v3, "s":Ljava/lang/String;
    const-string v4, "--DIS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 439
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 442
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 443
    const-string v4, "ff:ff:ff:ff:ff:ff"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 449
    return-object v0

    .line 446
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private static initPrefs(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 413
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 414
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 415
    const-string v1, "WIFI_AP_ALLOWED_DEVICE_SHARED_PREF"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 416
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 417
    .local v0, "deviceList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "wifi_ap_allow_all_devices"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    :cond_0
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "wifi_ap_allow_all_devices"

    const-string v3, "TRUE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    .end local v0    # "deviceList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private invokeServiceToUnBlackList(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "unblacklist_mac"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/WifiApInfoService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    if-eqz p1, :cond_0

    .line 490
    const-string v1, "mac_string"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 494
    return-void
.end method

.method public static isWhiteListAllEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 424
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->initPrefs(Landroid/content/Context;)V

    .line 425
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
    .line 393
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    if-eqz v0, :cond_1

    .line 394
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->mDevice:Lcom/android/settings/wifi/ConnectedDevice;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->access$200(Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;)Lcom/android/settings/wifi/ConnectedDevice;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/ConnectedDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 397
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 399
    :cond_1
    return-void
.end method

.method public static setAllowIfWhiteMac(ZLjava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .param p0, "enable"    # Z
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 549
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 550
    .local v4, "whiteList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, p1

    .line 551
    .local v2, "removeMac":Ljava/lang/String;
    move-object v0, p1

    .line 552
    .local v0, "addMac":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--DIS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 557
    :goto_0
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 559
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    if-eqz v5, :cond_0

    .line 560
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v5, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 562
    :cond_0
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 563
    .local v3, "spedit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 564
    .local v1, "devName":Ljava/lang/String;
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 565
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 566
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 567
    const/4 v5, 0x1

    .line 569
    .end local v1    # "devName":Ljava/lang/String;
    .end local v3    # "spedit":Landroid/content/SharedPreferences$Editor;
    :goto_1
    return v5

    .line 555
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

    .line 569
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

    .line 453
    const-string v1, "WifiApManageDevices"

    const-string v2, "Entered setApAllowedDeviceConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->getAllAllowedDeviceFromSharedPrefs(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 455
    .local v0, "devList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 456
    const-string v1, "WifiApManageDevices"

    const-string v2, "setApAllowedDeviceConfig: dev list is not empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 458
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0, v3}, Landroid/net/wifi/WifiManager;->manageSta(Ljava/util/List;Z)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    const-string v1, "WifiApManageDevices"

    const-string v2, "setApAllowedDeviceConfig: dev list is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 464
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->manageSta(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public static updateConnectedDevice(Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 3
    .param p0, "c"    # Lcom/android/settings/wifi/ConnectedDevice;

    .prologue
    .line 402
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    if-eqz v1, :cond_0

    .line 403
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    iget-object v2, p0, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedDevice;

    .line 404
    .local v0, "dev":Lcom/android/settings/wifi/ConnectedDevice;
    if-eqz v0, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    .line 406
    iget-object v1, p0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 407
    invoke-virtual {v0}, Lcom/android/settings/wifi/ConnectedDevice;->updateDisplay()V

    .line 410
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
    invoke-virtual {p0, v13}, Landroid/app/Activity;->showDialog(I)V

    .line 133
    :cond_0
    const-string v1, "WifiApManageDevices"

    const-string v2, "Launching WifiApManageDevices"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const v1, 0x7f050041

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 135
    const-string v1, "wifi_ap_connected_devices"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiProgressCategory;

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    .line 136
    sput-object p0, Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/wifi/WifiApDefaults;->UNKNOWN_STA_NAME:Ljava/lang/String;

    .line 142
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    if-eqz v1, :cond_1

    .line 143
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1, v13}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 144
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1, v12}, Lcom/android/settings/wifi/WifiProgressCategory;->setProgress(Z)V

    .line 145
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

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

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

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

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevicePref:Landroid/preference/Preference;

    .line 158
    const-string v1, "wifi_ap_allowed_devices"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

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
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 242
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

    invoke-virtual {v1, v13}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 165
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1, v12}, Lcom/android/settings/wifi/WifiProgressCategory;->setProgress(Z)V

    .line 166
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->initPrefs(Landroid/content/Context;)V

    .line 167
    const-string v1, "wifi_ap_allow_all_devices"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

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
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

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

    if-nez v1, :cond_b

    .line 178
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 179
    .local v7, "dev":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 181
    .local v4, "mac":Ljava/lang/String;
    const-string v1, "wifi_ap_allow_all_devices"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "--DIS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 187
    :cond_8
    const/4 v9, 0x1

    .line 188
    .local v9, "macEnable":Z
    const-string v1, "--DIS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 189
    const/4 v9, 0x0

    .line 190
    const-string v1, "--DIS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 192
    :cond_9
    new-instance v0, Lcom/android/settings/wifi/ConnectedDevice;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)V

    .line 193
    .restart local v0    # "c":Lcom/android/settings/wifi/ConnectedDevice;
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 194
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 195
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    sget-object v2, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "wifi_ap_allow_all_devices"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto :goto_3

    .line 197
    .end local v0    # "c":Lcom/android/settings/wifi/ConnectedDevice;
    .end local v4    # "mac":Ljava/lang/String;
    .end local v7    # "dev":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "macEnable":Z
    :cond_a
    invoke-virtual {p0, v13}, Lcom/android/settings/wifi/WifiApManageDevices;->updateAllowAllPref(Z)V

    .line 202
    .end local v8    # "i$":Ljava/util/Iterator;
    :goto_4
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 204
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;

    .line 205
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 209
    .local v11, "startIntent":Landroid/content/Intent;
    if-eqz v11, :cond_3

    .line 210
    const-string v1, "android.net.wifi.PBC_CONNECTION_REQUEST_NEW"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 211
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    .local v6, "alertDlg":Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 214
    const v1, 0x7f0b0097

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 215
    const v1, 0x7f0b0098

    new-instance v2, Lcom/android/settings/wifi/WifiApManageDevices$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApManageDevices$3;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    const v1, 0x7f0b0099

    new-instance v2, Lcom/android/settings/wifi/WifiApManageDevices$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApManageDevices$4;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    .line 200
    .end local v6    # "alertDlg":Landroid/app/AlertDialog$Builder;
    .end local v11    # "startIntent":Landroid/content/Intent;
    :cond_b
    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiApManageDevices;->updateAllowAllPref(Z)V

    goto :goto_4

    .line 234
    .restart local v11    # "startIntent":Landroid/content/Intent;
    :cond_c
    const-string v1, "android.net.wifi.PBC_INITIATE"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->cleanAllPreviousDialog()V

    .line 236
    new-instance v1, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    .line 237
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWpsTimerDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    const/4 v0, 0x0

    .line 255
    packed-switch p1, :pswitch_data_0

    .line 269
    :goto_0
    return-object v0

    .line 257
    :pswitch_0
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    if-eqz v1, :cond_0

    .line 258
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 259
    sput-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;

    .line 262
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    if-nez v0, :cond_1

    .line 263
    new-instance v0, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    .line 264
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 266
    :cond_1
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    goto :goto_0

    .line 255
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

    .line 286
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 287
    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mConnectedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    .line 288
    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    .line 290
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->cleanAllPreviousDialog()V

    .line 291
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 292
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
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 101
    const v1, 0x7f0b0097

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 102
    const v1, 0x7f0b0098

    new-instance v2, Lcom/android/settings/wifi/WifiApManageDevices$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApManageDevices$1;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    const v1, 0x7f0b0099

    new-instance v2, Lcom/android/settings/wifi/WifiApManageDevices$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApManageDevices$2;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

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
    .line 320
    const-string v5, "max_devices"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 321
    const/4 v3, 0x0

    .line 323
    .local v3, "maxDevices":I
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 333
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 334
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 336
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    if-eq v5, v3, :cond_0

    .line 337
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v3, v5, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    .line 339
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    .line 341
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 342
    .local v4, "r":Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings/wifi/WifiApManageDevices$5;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApManageDevices$5;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;)V

    .line 358
    .local v2, "hotspotRestartWarningListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    .line 359
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v6, 0x7f0b0082

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 361
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v6, 0x7f0b0081

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    const v7, 0x7f0b0083

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 364
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v6, 0x7f0b0084

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 365
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 375
    .end local v2    # "hotspotRestartWarningListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v3    # "maxDevices":I
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    :goto_1
    const/4 v5, 0x1

    return v5

    .line 324
    .restart local v3    # "maxDevices":I
    .restart local p1    # "preference":Landroid/preference/Preference;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 325
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

    .line 367
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1

    .line 370
    .end local v3    # "maxDevices":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    if-ne p1, v5, :cond_0

    .line 371
    sget-object v5, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "wifi_ap_allow_all_devices"

    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "FALSE"

    :goto_2
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 373
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiApManageDevices;->invokeServiceToUnBlackList(Ljava/lang/String;)V

    goto :goto_1

    .line 371
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

    .line 296
    instance-of v1, p2, Lcom/android/settings/wifi/ConnectedDevice;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi_ap_manage_devices_screen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->cleanAllPreviousDialog()V

    .line 299
    new-instance v1, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    check-cast p2, Lcom/android/settings/wifi/ConnectedDevice;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-direct {v1, p0, p0, p2}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;Lcom/android/settings/wifi/ConnectedDevice;)V

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    .line 300
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mDeviceDetailsDialog:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 316
    :goto_0
    return v0

    .line 302
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevicePref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 303
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->cleanAllPreviousDialog()V

    .line 305
    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 306
    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 309
    :cond_1
    instance-of v1, p2, Lcom/android/settings/wifi/ConnectedDevice;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi_ap_manage_allowed_devices_screen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->cleanAllPreviousDialog()V

    .line 312
    new-instance v1, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    check-cast p2, Lcom/android/settings/wifi/ConnectedDevice;

    .end local p2    # "preference":Landroid/preference/Preference;
    invoke-direct {v1, p0, p0, p2}, Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;-><init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;Lcom/android/settings/wifi/ConnectedDevice;)V

    sput-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    .line 313
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 316
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 248
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDeviceDialog:Lcom/android/settings/wifi/WifiApManageDevices$DeviceEditDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "edit_mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 478
    const-string v1, "WifiApManageDevices"

    const-string v2, "Entered onSharedPreferenceChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->setApAllowedDeviceConfig(Landroid/content/Context;)V

    .line 481
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disassociateSta()V

    .line 483
    sget-object v1, Lcom/android/settings/wifi/WifiApManageDevices;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices;->updateAllowAllPref(Z)V

    .line 484
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 279
    const-string v0, "WifiApManageDevices"

    const-string v1, "HOME key pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 281
    return-void
.end method

.method public updateAllowAllPref(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 470
    sget-object v2, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 471
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowAllDevices:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 472
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevicePref:Landroid/preference/Preference;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 473
    sget-object v0, Lcom/android/settings/wifi/WifiApManageDevices;->mAllowedDevices:Lcom/android/settings/wifi/WifiProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 474
    return-void

    :cond_1
    move v0, v1

    .line 470
    goto :goto_0

    .line 472
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
