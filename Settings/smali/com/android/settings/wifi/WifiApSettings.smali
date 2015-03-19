.class public Lcom/android/settings/wifi/WifiApSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static isFirstTime:Z

.field static mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

.field static mRoamingAlrtDlg:Landroid/app/AlertDialog;

.field static mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private mBatteryMgmt:Landroid/preference/ListPreference;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mObserverContext:Landroid/content/Context;

.field private mSecurityType:[Ljava/lang/String;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private myObserver:Lcom/android/settings/wifi/WifiApSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    sput-object v0, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    .line 82
    sput-object v0, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    .line 83
    sput-object v0, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiApSettings;->isFirstTime:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 59
    const-string v0, "WifiApSettings"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->LOGTAG:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 91
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->myObserver:Lcom/android/settings/wifi/WifiApSettings$SettingsObserver;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->handler:Landroid/os/Handler;

    .line 393
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApSettings;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->handleNewConfig()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApSettings;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    return-object v0
.end method

.method private confirmOpenConfig()V
    .locals 5

    .prologue
    .line 299
    const-string v2, "WifiApSettings"

    const-string v3, "Inside confirmOpenConfig"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 301
    .local v0, "r":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/wifi/WifiApSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApSettings$1;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    .line 313
    .local v1, "secTypeWarningListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    .line 314
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    const v3, 0x7f0b0086

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 315
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 316
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    const v3, 0x7f0b0085

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 317
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    const v4, 0x7f0b0087

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 319
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    const v3, 0x7f0b0088

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 320
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 321
    return-void
.end method

.method private handleNewConfig()V
    .locals 14

    .prologue
    const/16 v10, 0xff

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 325
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v9}, Lcom/android/settings/wifi/WifiApDialog;->getDhcpConfig()Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, "newDhcpConfig":Ljava/lang/String;
    const-string v9, "\\."

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, "ips":[Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 331
    .local v8, "startIp":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x32

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 332
    .local v2, "endIp":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v10, :cond_0

    .line 333
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 335
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v5, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v13

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "dhcpStartAddress":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v5, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v13

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "dhcpEndAddress":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v5, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v5, v13

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "gatewayAddress":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v3, v9, Landroid/net/wifi/WifiConfiguration;->wifi_ap_gateway:Ljava/lang/String;

    .line 339
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v9, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    .line 340
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->dhcp_end_addr:Ljava/lang/String;

    .line 342
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 343
    .local v7, "r":Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 344
    new-instance v4, Lcom/android/settings/wifi/WifiApSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiApSettings$2;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    .line 362
    .local v4, "hotspotRestartWarningListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    sput-object v9, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    .line 363
    sget-object v9, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v10, 0x7f0b0082

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 364
    sget-object v9, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 365
    sget-object v9, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v10, 0x7f0b0081

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 366
    sget-object v9, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const/4 v10, -0x1

    const v11, 0x7f0b0083

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 368
    sget-object v9, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v10, 0x7f0b0084

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 369
    sget-object v9, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 370
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9, v10}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 371
    return-void
.end method


# virtual methods
.method public cleanupContentObserver()V
    .locals 3

    .prologue
    .line 414
    const-string v1, "WifiApSettings"

    const-string v2, "UnRegister Observer for WifiApEnabler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mObserverContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 416
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->myObserver:Lcom/android/settings/wifi/WifiApSettings$SettingsObserver;

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->myObserver:Lcom/android/settings/wifi/WifiApSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 418
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v3, 0x0

    .line 267
    instance-of v1, p1, Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v1, :cond_3

    .line 268
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 270
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 271
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 272
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getNewConfig()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sec Type ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->confirmOpenConfig()V

    .line 295
    .end local v0    # "index":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 296
    return-void

    .line 277
    .restart local v0    # "index":I
    :cond_1
    const-string v1, "WifiApSettings"

    const-string v2, "mSecurityType!=OPEN_INDEX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->handleNewConfig()V

    goto :goto_0

    .line 282
    .end local v0    # "index":I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 287
    :cond_3
    instance-of v1, p1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mObserverContext:Landroid/content/Context;

    .line 122
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 123
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 124
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    .line 126
    const v2, 0x7f050042

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 128
    const-string v2, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 129
    const-string v2, "enable_wifi_ap"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 131
    const-string v2, "battery_management"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mBatteryMgmt:Landroid/preference/ListPreference;

    .line 132
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mBatteryMgmt:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-nez v2, :cond_2

    .line 134
    :cond_0
    const-string v2, "WifiApSettings"

    const-string v3, "Got some NUll preference unexpectedly - exiting app"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mBatteryMgmt:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v2, :cond_3

    .line 141
    const-string v2, "WifiApSettings"

    const-string v3, "Got config = null - loading loadDefaultWifiConfig"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mObserverContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApDefaults;->loadDefaultWifiConfig(Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 144
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 145
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    const v3, 0x7f0b037e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v5, v5, v0

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 148
    new-instance v2, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 151
    .local v1, "startIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 152
    const-string v2, "com.motorola.settings.DISPLAY_ROAM_ALERT"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    .line 154
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 155
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 156
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 157
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0065

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 159
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 161
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 164
    :cond_4
    const-string v2, "restart_hotspot"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    const-string v2, "WifiApSettings"

    const-string v3, "Recv\'d restart HS - doing so!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/wifi/WifiApEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 171
    :cond_5
    const-string v2, "com.motorola.settings.CHANGE_DEFAULT_KEY"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/settings/wifi/WifiApSettings;->isFirstTime:Z

    if-eqz v2, :cond_1

    .line 172
    const-string v2, "WifiApSettings"

    const-string v3, "Showing config dialog for the first time"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 174
    sput-boolean v6, Lcom/android/settings/wifi/WifiApSettings;->isFirstTime:Z

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 184
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 188
    :cond_0
    if-ne p1, v2, :cond_1

    .line 189
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 198
    :goto_0
    return-object v0

    .line 193
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 194
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    goto :goto_0

    .line 198
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->cleanDialog()V

    .line 231
    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 233
    sput-object v1, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    .line 237
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 239
    sput-object v1, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    .line 241
    :cond_1
    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 243
    sput-object v1, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 250
    :cond_3
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 251
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 99
    if-eqz p1, :cond_0

    .line 100
    const-string v0, "com.motorola.settings.CHANGE_DEFAULT_KEY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/wifi/WifiApSettings;->isFirstTime:Z

    if-eqz v0, :cond_1

    .line 101
    const-string v0, "WifiApSettings"

    const-string v1, "Showing config dialog for the first time in New Intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiApSettings;->isFirstTime:Z

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v0, "restart_hotspot"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiApEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->cleanupContentObserver()V

    .line 226
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 375
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "battery_management"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mObserverContext:Landroid/content/Context;

    const-string v4, "SOFTAP_DEVICE_SETTINGS.XML"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 379
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "wifi_ap_battery_timeout"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v2    # "sharedPref":Landroid/content/SharedPreferences;
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 384
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "WifiApSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check your xml file!! Poor array value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "recieved - ignore set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 255
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 256
    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 262
    :goto_0
    return v0

    .line 259
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 203
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 204
    :cond_0
    check-cast p2, Lcom/android/settings/wifi/WifiApDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p2, p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->prepareToDisplay(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 205
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 211
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->registerObserver()V

    .line 216
    return-void
.end method

.method public registerObserver()V
    .locals 4

    .prologue
    .line 405
    const-string v2, "WifiApSettings"

    const-string v3, "Register Observer for WifiApEnabler."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$SettingsObserver;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->handler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/WifiApSettings$SettingsObserver;-><init>(Lcom/android/settings/wifi/WifiApSettings;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->myObserver:Lcom/android/settings/wifi/WifiApSettings$SettingsObserver;

    .line 408
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mObserverContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 409
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "AP_ENABLE"

    invoke-static {v2}, Lcom/motorola/android/provider/MotorolaSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 410
    .local v1, "myUri":Landroid/net/Uri;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->myObserver:Lcom/android/settings/wifi/WifiApSettings$SettingsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 411
    return-void
.end method
