.class public Lcom/android/settings/wifi/WifiApSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static isFirstTime:Z

.field static mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

.field static mRoamingAlrtDlg:Landroid/app/AlertDialog;

.field static mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mBatteryMgmt:Landroid/preference/ListPreference;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mObserverContext:Landroid/content/Context;

.field private mSecurityType:[Ljava/lang/String;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


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
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 59
    const-string v0, "WifiApSettings"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->LOGTAG:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

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

.method private confirmOpenConfig()V
    .locals 5

    .prologue
    .line 297
    const-string v2, "WifiApSettings"

    const-string v3, "Inside confirmOpenConfig"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 299
    .local v0, "r":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/wifi/WifiApSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApSettings$1;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    .line 311
    .local v1, "secTypeWarningListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    .line 312
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    const v3, 0x7f0b00ac

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 313
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 314
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    const v3, 0x7f0b00ab

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    const v4, 0x7f0b00ad

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 317
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    const v3, 0x7f0b00ae

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 318
    sget-object v2, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 319
    return-void
.end method

.method private handleNewConfig()V
    .locals 14

    .prologue
    const/16 v10, 0xff

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 323
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v9}, Lcom/android/settings/wifi/WifiApDialog;->getDhcpConfig()Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, "newDhcpConfig":Ljava/lang/String;
    const-string v9, "\\."

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "ips":[Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 329
    .local v8, "startIp":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x32

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 330
    .local v2, "endIp":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v10, :cond_0

    .line 331
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 333
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

    .line 334
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

    .line 335
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

    .line 336
    .local v3, "gatewayAddress":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v3, v9, Landroid/net/wifi/WifiConfiguration;->wifi_ap_gateway:Ljava/lang/String;

    .line 337
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v9, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    .line 338
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->dhcp_end_addr:Ljava/lang/String;

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 341
    .local v7, "r":Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v9}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    .line 342
    new-instance v4, Lcom/android/settings/wifi/WifiApSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiApSettings$2;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    .line 360
    .local v4, "hotspotRestartWarningListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    sput-object v9, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    .line 361
    sget-object v9, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v10, 0x7f0b00a8

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 362
    sget-object v9, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 363
    sget-object v9, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v10, 0x7f0b00a7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    sget-object v9, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const/4 v10, -0x1

    const v11, 0x7f0b00a9

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 366
    sget-object v9, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    const v10, 0x7f0b00aa

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 367
    sget-object v9, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 368
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9, v10}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 369
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v3, 0x0

    .line 265
    instance-of v1, p1, Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v1, :cond_3

    .line 266
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 268
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 269
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 270
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getNewConfig()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
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

    .line 273
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->confirmOpenConfig()V

    .line 293
    .end local v0    # "index":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 294
    return-void

    .line 275
    .restart local v0    # "index":I
    :cond_1
    const-string v1, "WifiApSettings"

    const-string v2, "mSecurityType!=OPEN_INDEX"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->handleNewConfig()V

    goto :goto_0

    .line 280
    .end local v0    # "index":I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 285
    :cond_3
    instance-of v1, p1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mObserverContext:Landroid/content/Context;

    .line 120
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 121
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    .line 124
    const v6, 0x7f050048

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiApSettings;->addPreferencesFromResource(I)V

    .line 126
    const-string v6, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 127
    const-string v6, "enable_wifi_ap"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v6, "battery_management"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mBatteryMgmt:Landroid/preference/ListPreference;

    .line 130
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mBatteryMgmt:Landroid/preference/ListPreference;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-nez v6, :cond_2

    .line 132
    :cond_0
    const-string v6, "WifiApSettings"

    const-string v7, "Got some NUll preference unexpectedly - exiting app"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->finish()V

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 138
    .local v2, "defaultValue":I
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mObserverContext:Landroid/content/Context;

    const-string v7, "SOFTAP_DEVICE_SETTINGS.XML"

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 139
    .local v4, "sharedPref":Landroid/content/SharedPreferences;
    const-string v6, "wifi_ap_battery_timeout"

    int-to-long v7, v2

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 140
    .local v0, "currentValue":J
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mBatteryMgmt:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 142
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mBatteryMgmt:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v6, :cond_3

    .line 145
    const-string v6, "WifiApSettings"

    const-string v7, "Got config = null - loading loadDefaultWifiConfig"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mObserverContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApDefaults;->loadDefaultWifiConfig(Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 148
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 149
    .local v3, "index":I
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    const v7, 0x7f0b03d0

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v9, v9, v3

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    new-instance v6, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v6, p0, v7}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 155
    .local v5, "startIntent":Landroid/content/Intent;
    if-eqz v5, :cond_1

    .line 156
    const-string v6, "com.motorola.settings.DISPLAY_ROAM_ALERT"

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 157
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    sput-object v6, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    .line 158
    sget-object v6, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 159
    sget-object v6, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0099

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 160
    sget-object v6, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    const v7, 0x7f0b0097

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 161
    sget-object v6, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 163
    sget-object v6, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    const/4 v7, -0x2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b009a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 165
    sget-object v6, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 168
    :cond_4
    const-string v6, "restart_hotspot"

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 169
    const-string v6, "WifiApSettings"

    const-string v7, "Recv\'d restart HS - doing so!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/wifi/WifiApEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 175
    :cond_5
    const-string v6, "com.motorola.settings.CHANGE_DEFAULT_KEY"

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/android/settings/wifi/WifiApSettings;->isFirstTime:Z

    if-eqz v6, :cond_1

    .line 176
    const-string v6, "WifiApSettings"

    const-string v7, "Showing config dialog for the first time"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 178
    sput-boolean v10, Lcom/android/settings/wifi/WifiApSettings;->isFirstTime:Z

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 188
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    .line 192
    :cond_0
    if-ne p1, v2, :cond_1

    .line 193
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 202
    :goto_0
    return-object v0

    .line 197
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 198
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    goto :goto_0

    .line 202
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->cleanDialog()V

    .line 229
    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 231
    sput-object v1, Lcom/android/settings/wifi/WifiApSettings;->mRoamingAlrtDlg:Landroid/app/AlertDialog;

    .line 235
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 237
    sput-object v1, Lcom/android/settings/wifi/WifiApSettings;->mSecTypeWarningAlertDlg:Landroid/app/AlertDialog;

    .line 239
    :cond_1
    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    sget-object v0, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 241
    sput-object v1, Lcom/android/settings/wifi/WifiApSettings;->mHotspotRestartAlertDlg:Landroid/app/AlertDialog;

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    .line 248
    :cond_3
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 249
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    const-string v0, "com.motorola.settings.CHANGE_DEFAULT_KEY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/wifi/WifiApSettings;->isFirstTime:Z

    if-eqz v0, :cond_1

    .line 99
    const-string v0, "WifiApSettings"

    const-string v1, "Showing config dialog for the first time in New Intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiApSettings;->isFirstTime:Z

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v0, "restart_hotspot"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
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
    .line 221
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 224
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 373
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "battery_management"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mObserverContext:Landroid/content/Context;

    const-string v4, "SOFTAP_DEVICE_SETTINGS.XML"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 377
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

    .line 386
    .end local v2    # "sharedPref":Landroid/content/SharedPreferences;
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 382
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 383
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

    .line 253
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 260
    :goto_0
    return v0

    .line 257
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
    .line 207
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 208
    :cond_0
    check-cast p2, Lcom/android/settings/wifi/WifiApDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p2, p0, v0}, Lcom/android/settings/wifi/WifiApDialog;->prepareToDisplay(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 209
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 217
    return-void
.end method
