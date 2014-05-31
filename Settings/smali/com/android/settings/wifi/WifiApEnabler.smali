.class public Lcom/android/settings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mAlertDlg:Landroid/app/AlertDialog;

.field private static mStartUpAlrtDlg:Landroid/app/AlertDialog;


# instance fields
.field private isNetworkServiceAvailable:I

.field private final mCheckBox:Landroid/preference/CheckBoxPreference;

.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUsingDefaultConfig:Z

.field private mWPState:I

.field private mWaitForWifiStateChange:Z

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiGetValueSelected:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    sput-object v0, Lcom/android/settings/wifi/WifiApEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    .line 93
    sput-object v0, Lcom/android/settings/wifi/WifiApEnabler;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWPState:I

    .line 89
    iput v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->isNetworkServiceAvailable:I

    .line 95
    new-instance v0, Lcom/android/settings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    .line 179
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 180
    invoke-virtual {p2, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 181
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    .line 183
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 184
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.motorola.wirelessdisplay"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.motorola.wirelessdisplay.service.WIRELESS_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_1

    .line 202
    const-string v0, "WifiApEnabler"

    const-string v1, "Config is null - loading default"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mUsingDefaultConfig:Z

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDefaults;->loadDefaultWifiConfig(Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 206
    const-string v0, "WifiApEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifiConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 216
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/WifiApInfoService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 219
    return-void

    .line 210
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mUsingDefaultConfig:Z

    .line 211
    const-string v0, "WifiApEnabler"

    const-string v1, "Config is NOT null - loading SAVED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiApEnabler;Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "x1"    # Landroid/preference/Preference;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiApEnabler;->onPreferenceChangeHandler(Landroid/preference/Preference;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->checkDisplayRoamingWarning()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApEnabler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->isNetworkServiceAvailable:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/WifiApEnabler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->isNetworkServiceAvailable:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/WifiApEnabler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWPState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabledPost(Z)V

    return-void
.end method

.method private checkDisplayRoamingWarning()V
    .locals 10

    .prologue
    const v9, 0x7f0b0097

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 153
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 157
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 159
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f0200cd

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 162
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    const-string v4, "com.motorola.settings.DISPLAY_ROAM_ALERT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0b0098

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 169
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v2, Landroid/app/Notification;->flags:I

    .line 170
    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 171
    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 173
    :cond_0
    return-void
.end method

.method private checkWifiApRestricted()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 455
    const/4 v0, 0x4

    .line 456
    .local v0, "DEVICEID_HOTSPOT":I
    const-string v1, "persist.sprint.dm.status"

    .line 457
    .local v1, "DEVICE_STATE_KEY":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "sdmstatus":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 459
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 460
    .local v2, "dms":C
    const/16 v4, 0x30

    if-ne v2, v4, :cond_0

    .line 461
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 462
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 463
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b005d

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 466
    .end local v2    # "dms":C
    :cond_0
    return-void
.end method

.method private enableWifiCheckBox()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 268
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-nez v0, :cond_2

    .line 269
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 274
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 277
    iget v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->isNetworkServiceAvailable:I

    if-eqz v3, :cond_3

    .line 278
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b007a

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 287
    :cond_0
    :goto_2
    return-void

    .end local v0    # "isAirplaneMode":Z
    :cond_1
    move v0, v2

    .line 266
    goto :goto_0

    .line 271
    .restart local v0    # "isAirplaneMode":Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 281
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    if-nez v0, :cond_0

    .line 283
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private handleWifiApStateChanged(I)V
    .locals 4

    .prologue
    const v2, 0x7f0b033a

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 380
    packed-switch p1, :pswitch_data_0

    .line 442
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 443
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 444
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 445
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 448
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->checkWifiApRestricted()V

    .line 450
    return-void

    .line 382
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b007b

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 383
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 390
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 392
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 394
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->checkDisplayRoamingWarning()V

    .line 396
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mUsingDefaultConfig:Z

    if-ne v1, v3, :cond_1

    .line 397
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    const-string v2, "com.motorola.settings.CHANGE_DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const/high16 v2, 0x54800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 401
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 402
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mUsingDefaultConfig:Z

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiGetValueSelected:Landroid/net/wifi/WifiConfiguration;

    .line 408
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiGetValueSelected:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setMaxSta(I)V

    goto :goto_0

    .line 415
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b007c

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 416
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 419
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 420
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 421
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    if-nez v1, :cond_2

    .line 422
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    goto :goto_0

    .line 427
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 430
    :try_start_0
    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 435
    :goto_1
    if-eq v0, v3, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    goto/16 :goto_0

    .line 432
    :catch_0
    move-exception v1

    goto :goto_1

    .line 380
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 492
    packed-switch p1, :pswitch_data_0

    .line 500
    :goto_0
    return-void

    .line 495
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    goto :goto_0

    .line 492
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onPreferenceChangeHandler(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 579
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 580
    .local v0, "cr":Landroid/content/ContentResolver;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 585
    .local v1, "enable":Z
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 586
    .local v3, "wifiState":I
    if-eqz v1, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 588
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 589
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 592
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 593
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v4, :cond_3

    .line 594
    const-string v4, "WifiApEnabler"

    const-string v5, "Config is null  in onPreferenceChange - loading default"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApDefaults;->loadDefaultWifiConfig(Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 599
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v5, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 601
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 602
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 610
    :goto_1
    if-nez v1, :cond_2

    .line 611
    const/4 v2, 0x0

    .line 613
    .local v2, "wifiSavedState":I
    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 617
    :goto_2
    if-ne v2, v6, :cond_2

    .line 618
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 619
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 623
    .end local v2    # "wifiSavedState":I
    :cond_2
    return-void

    .line 597
    :cond_3
    const-string v4, "WifiApEnabler"

    const-string v5, "Config is NOT null in onPreferenceChange - loading SAVED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0b033a

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 614
    .restart local v2    # "wifiSavedState":I
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method private setSoftapEnabledPost(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 300
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 301
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 305
    .local v1, "wifiSavedState":I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 306
    .local v2, "wifiState":I
    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 308
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 309
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    :cond_1
    if-nez p1, :cond_2

    .line 316
    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    .line 318
    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 323
    :goto_0
    if-ne v1, v5, :cond_2

    .line 324
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWaitForWifiStateChange:Z

    .line 328
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 330
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 338
    :goto_1
    if-nez p1, :cond_3

    .line 339
    if-ne v1, v5, :cond_3

    .line 340
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 341
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    :cond_3
    return-void

    .line 332
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0b033a

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 319
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private showWPTurnoffDialog()V
    .locals 3

    .prologue
    .line 470
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b091b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b091c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0916

    new-instance v2, Lcom/android/settings/wifi/WifiApEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApEnabler$3;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0918

    new-instance v2, Lcom/android/settings/wifi/WifiApEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApEnabler$2;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiApEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    .line 486
    sget-object v0, Lcom/android/settings/wifi/WifiApEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 487
    sget-object v0, Lcom/android/settings/wifi/WifiApEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 488
    return-void
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 355
    const/4 v11, 0x0

    .line 356
    .local v11, "wifiTethered":Z
    const/4 v10, 0x0

    .line 358
    .local v10, "wifiErrored":Z
    move-object/from16 v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, "o":Ljava/lang/Object;
    move-object v8, v6

    .line 359
    check-cast v8, Ljava/lang/String;

    .line 360
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 361
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 360
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 358
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 364
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6    # "o":Ljava/lang/Object;
    move-object v8, v6

    .line 365
    check-cast v8, Ljava/lang/String;

    .line 366
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 367
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 366
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 364
    .end local v7    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_2

    .line 371
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    .line 372
    iget-object v12, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 373
    .local v9, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 377
    .end local v9    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 374
    :cond_7
    if-eqz v10, :cond_6

    .line 375
    iget-object v12, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f0b033a

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public cleanDialog()V
    .locals 1

    .prologue
    .line 560
    sget-object v0, Lcom/android/settings/wifi/WifiApEnabler;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiApEnabler;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    sget-object v0, Lcom/android/settings/wifi/WifiApEnabler;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 563
    :cond_0
    return-void
.end method

.method public displayStartupNotice(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 504
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 556
    :cond_0
    :goto_0
    return v4

    .line 508
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_ap_display_starup_warning"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    .line 511
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/android/settings/wifi/WifiApEnabler;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    .line 512
    sget-object v4, Lcom/android/settings/wifi/WifiApEnabler;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0400af

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 513
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f08017f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    move-object v0, v4

    check-cast v0, Landroid/widget/CheckBox;

    .line 514
    .local v0, "c":Landroid/widget/CheckBox;
    new-instance v3, Lcom/android/settings/wifi/WifiApEnabler$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/settings/wifi/WifiApEnabler$4;-><init>(Lcom/android/settings/wifi/WifiApEnabler;Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 534
    .local v3, "warningListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Lcom/android/settings/wifi/WifiApEnabler$5;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/wifi/WifiApEnabler$5;-><init>(Lcom/android/settings/wifi/WifiApEnabler;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 545
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "ic_dialog_custom_alert"

    const-string v7, "drawable"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 546
    .local v1, "resID":I
    sget-object v4, Lcom/android/settings/wifi/WifiApEnabler;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 548
    sget-object v4, Lcom/android/settings/wifi/WifiApEnabler;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    const v6, 0x7f0b0044

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 549
    sget-object v4, Lcom/android/settings/wifi/WifiApEnabler;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 551
    sget-object v4, Lcom/android/settings/wifi/WifiApEnabler;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 552
    sget-object v4, Lcom/android/settings/wifi/WifiApEnabler;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0234

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 553
    sget-object v4, Lcom/android/settings/wifi/WifiApEnabler;->mStartUpAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    move v4, v5

    .line 554
    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 566
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 567
    .local v0, "enable":Z
    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/WifiApEnabler;->displayStartupNotice(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 569
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiApEnabler;->onPreferenceChangeHandler(Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 574
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 572
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiApEnabler;->onPreferenceChangeHandler(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    sget-object v0, Lcom/android/settings/wifi/WifiApEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiApEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/android/settings/wifi/WifiApEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 245
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/WifiApEnabler;->mAlertDlg:Landroid/app/AlertDialog;

    .line 247
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 226
    .local v0, "wifiApState":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 236
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->checkWifiApRestricted()V

    .line 238
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 239
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSoftapEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 290
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWPState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWPState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->showWPTurnoffDialog()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabledPost(Z)V

    goto :goto_0
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x104043b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0b03cd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 352
    return-void

    .line 349
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
