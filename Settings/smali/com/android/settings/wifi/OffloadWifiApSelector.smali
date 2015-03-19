.class public Lcom/android/settings/wifi/OffloadWifiApSelector;
.super Landroid/preference/PreferenceActivity;
.source "OffloadWifiApSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAccessPointsCategory:Landroid/preference/PreferenceCategory;

.field private mDataOffloadWifiState:I

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mKeyStoreNetworkId:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mNetworkStateChanged:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mDataOffloadWifiState:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mNetworkStateChanged:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mKeyStoreNetworkId:I

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/android/settings/wifi/OffloadWifiApSelector$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/OffloadWifiApSelector$1;-><init>(Lcom/android/settings/wifi/OffloadWifiApSelector;)V

    iput-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/OffloadWifiApSelector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/OffloadWifiApSelector;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mDataOffloadWifiState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/OffloadWifiApSelector;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/OffloadWifiApSelector;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/OffloadWifiApSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/OffloadWifiApSelector;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->startTimer()V

    return-void
.end method

.method private connect(I)V
    .locals 3
    .param p1, "networkId"    # I

    .prologue
    .line 366
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 377
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 371
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 372
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 375
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 376
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_0
.end method

.method private enableNetworks()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 277
    iget-object v7, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 280
    iget-object v7, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 282
    .local v5, "preference":Landroid/preference/Preference;
    instance-of v7, v5, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_0

    move-object v0, v5

    .line 283
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 284
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 286
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v7, v10, :cond_0

    .line 287
    iget-object v7, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 277
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 291
    .end local v5    # "preference":Landroid/preference/Preference;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 292
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_3

    .line 293
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 294
    .local v6, "remConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_2

    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v7, v10, :cond_2

    .line 295
    iget-object v7, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v8, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_1

    .line 300
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "remConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    return-void
.end method

.method private forget(I)V
    .locals 1
    .param p1, "networkId"    # I

    .prologue
    .line 380
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 382
    invoke-direct {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->saveNetworks()V

    goto :goto_0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 385
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 387
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mKeyStoreNetworkId:I

    .line 388
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 389
    const/4 v0, 0x1

    .line 391
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetworks()V
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->enableNetworks()V

    .line 305
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->updateAccessPoints()V

    .line 307
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 327
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 328
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 329
    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 243
    .local v1, "optionClickedTime":J
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.motorola.dataoffloading.ACTION_UPDATE_TIMESTAMP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "offloadTimerValue"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 247
    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    :cond_0
    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 266
    if-eqz p1, :cond_2

    .line 267
    iput-object p1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    .line 272
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 270
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 250
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->updateAccessPoints()V

    .line 258
    :cond_0
    return-void

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected handleEvent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    iget v3, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mDataOffloadWifiState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 203
    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 205
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->saveNetworks()V

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 237
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/OffloadWifiApSelector;->updateWifiState(I)V

    goto :goto_0

    .line 212
    :cond_2
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->updateAccessPoints()V

    goto :goto_0

    .line 214
    :cond_3
    const-string v3, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 215
    iget-object v3, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 216
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 218
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->updateAccessPoints()V

    goto :goto_0

    .line 219
    :cond_5
    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 220
    const-string v3, "newState"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SupplicantState;

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/OffloadWifiApSelector;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 222
    :cond_6
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 223
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mNetworkStateChanged:Z

    .line 224
    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 226
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_7

    .line 227
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/OffloadWifiApSelector;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 229
    :cond_7
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mNetworkStateChanged:Z

    goto :goto_0

    .line 230
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_8
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "reason":Ljava/lang/String;
    const-string v3, "homekey"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->startTimer()V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->startTimer()V

    .line 149
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v4, -0x1

    .line 333
    const/4 v2, -0x3

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_1

    .line 334
    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/OffloadWifiApSelector;->forget(I)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    if-ne p2, v4, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 337
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x22

    if-le v2, v3, :cond_2

    .line 339
    const v2, 0x7f0b0007

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 342
    :cond_2
    if-nez v0, :cond_3

    .line 343
    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/OffloadWifiApSelector;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/OffloadWifiApSelector;->connect(I)V

    goto :goto_0

    .line 346
    :cond_3
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v4, :cond_4

    .line 347
    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 348
    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 349
    invoke-direct {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->saveNetworks()V

    .line 350
    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/OffloadWifiApSelector;->connect(I)V

    goto :goto_0

    .line 355
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 356
    .local v1, "networkId":I
    if-eq v1, v4, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 358
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 359
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/OffloadWifiApSelector;->connect(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 94
    const v4, 0x7f05000a

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 95
    const-string v4, "access_points"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    .line 96
    iget-object v4, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 97
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "com.android.settings.wifi.ACTION_SELECT_OFFLOAD_WIFIAP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "WIFI_ON_OR_OFF"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mDataOffloadWifiState:I

    .line 102
    const v4, 0x7f0b0006

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 103
    const v4, 0x7f04002a

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 104
    const-string v4, "nw_finder"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 105
    .local v1, "nwFinderPref":Landroid/preference/Preference;
    const v4, 0x7f05001d

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 107
    const-string v4, "access_points"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 108
    .local v3, "wifiNetworksCategory":Landroid/preference/Preference;
    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    const v4, 0x7f080046

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 112
    .local v2, "offloadReminderButton":Landroid/widget/Button;
    const v4, 0x7f0b0005

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 113
    const v4, 0x7f0b000b

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 114
    new-instance v4, Lcom/android/settings/wifi/OffloadWifiApSelector$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/OffloadWifiApSelector$2;-><init>(Lcom/android/settings/wifi/OffloadWifiApSelector;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    .end local v1    # "nwFinderPref":Landroid/preference/Preference;
    .end local v2    # "offloadReminderButton":Landroid/widget/Button;
    .end local v3    # "wifiNetworksCategory":Landroid/preference/Preference;
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 143
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 312
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 313
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2    # "preference":Landroid/preference/Preference;
    iput-object p2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 314
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/OffloadWifiApSelector;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 319
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 317
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->updateAccessPoints()V

    .line 132
    return-void
.end method

.method protected updateAccessPoints()V
    .locals 11

    .prologue
    .line 152
    iget v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mDataOffloadWifiState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 197
    :cond_0
    return-void

    .line 158
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 160
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_3

    .line 161
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 162
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v9, :cond_2

    .line 163
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 164
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v10, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v9, v10}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 165
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .line 171
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v8, :cond_7

    .line 172
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 173
    .local v7, "result":Landroid/net/wifi/ScanResult;
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    .line 176
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v10, "[IBSS]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 179
    const/4 v4, 0x0

    .line 180
    .local v4, "found":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 181
    .restart local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 182
    const/4 v4, 0x1

    goto :goto_2

    .line 185
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_6
    if-nez v4, :cond_4

    .line 186
    new-instance v9, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v9, p0, v7}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    .end local v4    # "found":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_7
    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 192
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 193
    .restart local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    .line 194
    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method
