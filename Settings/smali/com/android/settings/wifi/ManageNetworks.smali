.class public Lcom/android/settings/wifi/ManageNetworks;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ManageNetworks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ManageNetworks$Scanner;,
        Lcom/android/settings/wifi/ManageNetworks$ForgetAllDialog;
    }
.end annotation


# instance fields
.field private mAccessPoints:Lcom/android/settings/ProgressCategory;

.field private mChannel:Landroid/net/wifi/WifiManager$Channel;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDropListener:Lcom/android/settings/wifi/TouchInterceptor$DropListener;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetAll:Landroid/preference/Preference;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mInDrag:Z

.field private mInXlSetupWizard:Z

.field private mKeyStoreNetworkId:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastPriority:I

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mNetworkStateChanged:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetNetworks:Z

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mStartListener:Lcom/android/settings/wifi/TouchInterceptor$StartListener;

.field private mTrackList:Landroid/widget/ListView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 139
    iput-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mResetNetworks:Z

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mKeyStoreNetworkId:I

    .line 205
    iput-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mNetworkStateChanged:Z

    .line 206
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 212
    iput-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mInDrag:Z

    .line 215
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ManageNetworks$1;-><init>(Lcom/android/settings/wifi/ManageNetworks;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDropListener:Lcom/android/settings/wifi/TouchInterceptor$DropListener;

    .line 228
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ManageNetworks$2;-><init>(Lcom/android/settings/wifi/ManageNetworks;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mStartListener:Lcom/android/settings/wifi/TouchInterceptor$StartListener;

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    .line 239
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ManageNetworks$3;-><init>(Lcom/android/settings/wifi/ManageNetworks;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 253
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/ManageNetworks$Scanner;-><init>(Lcom/android/settings/wifi/ManageNetworks;Lcom/android/settings/wifi/ManageNetworks$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/ManageNetworks;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/ManageNetworks;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->forgetAllNetworks()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/ManageNetworks;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/ManageNetworks;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/ManageNetworks;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/ManageNetworks;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/settings/wifi/ManageNetworks;->mInDrag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/ManageNetworks;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/ManageNetworks;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/ManageNetworks;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/ManageNetworks;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/ManageNetworks;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/ManageNetworks;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/ManageNetworks;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private connect(IZ)V
    .locals 9
    .param p1, "networkId"    # I
    .param p2, "isRemb"    # Z

    .prologue
    const/4 v8, -0x1

    .line 650
    const/4 v3, -0x1

    .line 651
    .local v3, "origPrio":I
    if-ne p1, v8, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    const-string v5, "ManageNetworks"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " In connect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    const v6, 0x1869b

    if-lt v5, v6, :cond_4

    .line 657
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 658
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 659
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v5, v8, :cond_2

    .line 660
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 661
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 662
    add-int/lit8 v5, v2, 0x1

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 663
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 657
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 666
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    .line 670
    .end local v2    # "i":I
    :cond_4
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 671
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    iput p1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 672
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ManageNetworks;->getNetworkConfig(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 673
    .local v4, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_5

    .line 674
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    .line 676
    :cond_5
    if-eqz p2, :cond_6

    .line 677
    iget v3, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 679
    :cond_6
    iget v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 681
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 682
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->saveNetworks()V

    .line 684
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/ManageNetworks;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v7, p0, Lcom/android/settings/wifi/ManageNetworks;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v5, v6, p1, v7}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 686
    if-eqz p2, :cond_0

    .line 687
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1, v3}, Landroid/net/wifi/WifiManager;->restorePrioAfterConnection(II)Z

    .line 688
    const-string v5, "ManageNetworks"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calling restorePrio "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " prio "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private enableNetworks()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 696
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_1

    .line 697
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 698
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v5, v8, :cond_0

    .line 699
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 696
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 703
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 704
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_3

    .line 705
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 706
    .local v4, "remConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_2

    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v5, v8, :cond_2

    .line 707
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_1

    .line 712
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "remConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    iput-boolean v7, p0, Lcom/android/settings/wifi/ManageNetworks;->mResetNetworks:Z

    .line 713
    return-void
.end method

.method private forget(I)V
    .locals 3
    .param p1, "networkId"    # I

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 642
    return-void
.end method

.method private forgetAllNetworks()V
    .locals 4

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->forgetAllNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 647
    return-void
.end method

.method private getNetworkConfig(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 886
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 887
    .local v2, "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 888
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 889
    .local v1, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 894
    .end local v1    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :goto_1
    return-object v1

    .line 887
    .restart local v1    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 894
    .end local v1    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 786
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 788
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->updateWifiState(I)V

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 791
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    goto :goto_0

    .line 792
    :cond_2
    const-string v2, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 793
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 794
    iput-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 796
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    goto :goto_0

    .line 797
    :cond_4
    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 798
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 799
    const-string v2, "newState"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SupplicantState;

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 802
    :cond_5
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 803
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mNetworkStateChanged:Z

    .line 804
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 806
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_6

    .line 807
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 808
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 810
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mNetworkStateChanged:Z

    goto :goto_0

    .line 811
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7
    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 812
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/ManageNetworks;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method private launchWAPICertMgr()V
    .locals 4

    .prologue
    .line 865
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 866
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    const-string v2, "vnd.motorola.wapicertificatemanager/vnd.motorola.wapi.certs"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_0
    return-void

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ManageNetworks"

    const-string v3, "No proper activity can be launched to view vnd.motorola.wapi.certs"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private orderOnPriority(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 877
    .local p1, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ManageNetworks$7;-><init>(Lcom/android/settings/wifi/ManageNetworks;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 882
    return-void
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 610
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 613
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mKeyStoreNetworkId:I

    .line 614
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 615
    const/4 v0, 0x1

    .line 618
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetworks()V
    .locals 5

    .prologue
    .line 720
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 721
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 722
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mInXlSetupWizard:Z

    if-nez v2, :cond_0

    .line 723
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 720
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 727
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 600
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 601
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 602
    return-void
.end method

.method private showForgetAllDialog()V
    .locals 3

    .prologue
    .line 605
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$ForgetAllDialog;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ManageNetworks$ForgetAllDialog;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ForgetAllDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method private declared-synchronized updateAccessPoints()V
    .locals 10

    .prologue
    .line 731
    monitor-enter p0

    :try_start_0
    iget-boolean v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mInDrag:Z

    if-eqz v8, :cond_1

    .line 732
    const-string v8, "ManageNetworks"

    const-string v9, " Update access point dragging true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    :cond_0
    monitor-exit p0

    return-void

    .line 736
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v1, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 738
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_5

    .line 739
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    .line 740
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 742
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v9, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    if-le v8, v9, :cond_2

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    const v9, 0x1869c

    if-ge v8, v9, :cond_2

    .line 744
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    .line 748
    :cond_2
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v8, :cond_4

    .line 749
    const/4 v8, 0x2

    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 754
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 755
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->updateforManageNetwork()V

    .line 756
    iget-object v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v9, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v8, v9}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 757
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 731
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v1    # "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 750
    .restart local v1    # "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_2
    iget-boolean v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mResetNetworks:Z

    if-eqz v8, :cond_3

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 751
    const/4 v8, 0x0

    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 761
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v7

    .line 762
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v7, :cond_7

    .line 763
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 764
    .local v6, "result":Landroid/net/wifi/ScanResult;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 765
    .restart local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v6}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    goto :goto_2

    .line 771
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "result":Landroid/net/wifi/ScanResult;
    :cond_7
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 773
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/ManageNetworks;->mForgetAll:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 775
    iget-object v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 776
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ManageNetworks;->orderOnPriority(Ljava/util/List;)V

    .line 778
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 779
    .restart local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 818
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 819
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->pause()V

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_4

    .line 824
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->pause()V

    .line 829
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 830
    if-eqz p1, :cond_2

    .line 831
    iput-object p1, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 836
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-lez v1, :cond_5

    .line 838
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 839
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 840
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 841
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 836
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 826
    .end local v1    # "i":I
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->resume()V

    goto :goto_1

    .line 845
    .restart local v1    # "i":I
    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mResetNetworks:Z

    if-eqz v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v3, :cond_6

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v3, :cond_6

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_0

    .line 847
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    .line 848
    iget-boolean v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mNetworkStateChanged:Z

    if-eqz v3, :cond_0

    .line 849
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->enableNetworks()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 854
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->resume()V

    .line 856
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    .line 862
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->pause()V

    .line 860
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_0
.end method


# virtual methods
.method public changeAndSavePrio(II)Z
    .locals 18
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 488
    const/4 v10, 0x0

    .line 489
    .local v10, "startConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    .line 490
    .local v8, "src":Lcom/android/settings/wifi/AccessPoint;
    const/4 v7, 0x0

    .local v7, "prevPrio":I
    const/4 v12, 0x0

    .line 491
    .local v12, "tempPrio":I
    const/4 v11, 0x1

    .line 494
    .local v11, "stepBy":I
    add-int/lit8 v9, p1, -0x1

    .line 495
    .local v9, "start":I
    add-int/lit8 v3, p2, -0x1

    .line 496
    .local v3, "end":I
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    .line 497
    const/4 v11, -0x1

    .line 499
    :cond_0
    if-gez v3, :cond_1

    .line 500
    const/4 v3, 0x0

    .line 502
    :cond_1
    if-ne v9, v3, :cond_2

    .line 503
    const/4 v15, 0x0

    .line 554
    :goto_0
    return v15

    .line 506
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v14

    .line 508
    .local v14, "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v14, :cond_3

    .line 509
    const/4 v15, 0x0

    goto :goto_0

    .line 510
    :cond_3
    move v4, v9

    .local v4, "i":I
    :goto_1
    add-int v15, v3, v11

    if-eq v4, v15, :cond_9

    .line 511
    const-string v15, "ManageNetworks"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changeAndSavePrio start "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " end "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " stepby "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 513
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v6, -0x1

    .line 514
    .local v6, "netid":I
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    add-int/lit8 v16, v4, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .end local v8    # "src":Lcom/android/settings/wifi/AccessPoint;
    check-cast v8, Lcom/android/settings/wifi/AccessPoint;

    .line 515
    .restart local v8    # "src":Lcom/android/settings/wifi/AccessPoint;
    if-eqz v8, :cond_6

    .line 516
    iget v6, v8, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 517
    const-string v15, "ManageNetworks"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changeAndSavePrio netid "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v5, v15, -0x1

    .local v5, "j":I
    :goto_2
    if-ltz v5, :cond_5

    .line 522
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 523
    .local v13, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v13, :cond_8

    iget v15, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v15, v6, :cond_8

    .line 524
    iput v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 525
    const-string v15, "ManageNetworks"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changeAndSavePrio config.networkId "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    if-ne v4, v9, :cond_7

    .line 527
    move-object v10, v2

    .line 528
    iget v7, v13, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 533
    iget v15, v13, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    iput v15, v2, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    .line 510
    .end local v13    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    :goto_3
    add-int/2addr v4, v11

    goto/16 :goto_1

    .line 519
    .end local v5    # "j":I
    :cond_6
    if-ne v4, v9, :cond_4

    .line 520
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 536
    .restart local v5    # "j":I
    .restart local v13    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    iget v12, v13, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 537
    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 538
    move v7, v12

    .line 543
    iget v15, v13, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    iput v15, v2, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    .line 544
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15, v2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    goto :goto_3

    .line 521
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 549
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "j":I
    .end local v6    # "netid":I
    .end local v13    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    if-eqz v10, :cond_a

    .line 550
    iput v7, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 551
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15, v10}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 553
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 554
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 276
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 277
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 278
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 279
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 281
    const-string v0, "access_points"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    .line 282
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 284
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/settings/wifi/TouchInterceptor;

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mStartListener:Lcom/android/settings/wifi/TouchInterceptor$StartListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/TouchInterceptor;->setStartListener(Lcom/android/settings/wifi/TouchInterceptor$StartListener;)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/settings/wifi/TouchInterceptor;

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mDropListener:Lcom/android/settings/wifi/TouchInterceptor$DropListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/TouchInterceptor;->setDropListener(Lcom/android/settings/wifi/TouchInterceptor$DropListener;)V

    .line 288
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 289
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ManageNetworks$4;-><init>(Lcom/android/settings/wifi/ManageNetworks;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 299
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ManageNetworks$5;-><init>(Lcom/android/settings/wifi/ManageNetworks;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 309
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ManageNetworks$6;-><init>(Lcom/android/settings/wifi/ManageNetworks;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 319
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 322
    const-string v0, "forget_all"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mForgetAll:Landroid/preference/Preference;

    .line 325
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    .line 326
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/settings/wifi/TouchInterceptor;

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mStartListener:Lcom/android/settings/wifi/TouchInterceptor$StartListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/TouchInterceptor;->setStartListener(Lcom/android/settings/wifi/TouchInterceptor$StartListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/settings/wifi/TouchInterceptor;

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mDropListener:Lcom/android/settings/wifi/TouchInterceptor$DropListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/TouchInterceptor;->setDropListener(Lcom/android/settings/wifi/TouchInterceptor$DropListener;)V

    .line 329
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 259
    instance-of v0, p1, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iput-boolean v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mInXlSetupWizard:Z

    .line 260
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 560
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v2, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, "dialogClassName":Ljava/lang/String;
    const-string v2, "android.app.AlertDialog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 566
    if-ne p2, v3, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->forgetAllNetworks()V

    goto :goto_0

    .line 571
    :cond_2
    const/4 v2, -0x3

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_3

    .line 572
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->forget(I)V

    goto :goto_0

    .line 573
    :cond_3
    if-ne p2, v3, :cond_0

    .line 574
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 576
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_4

    .line 577
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v2, v3, :cond_0

    .line 578
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2, v5}, Lcom/android/settings/wifi/ManageNetworks;->connect(IZ)V

    goto :goto_0

    .line 580
    :cond_4
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v3, :cond_0

    .line 581
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 583
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 584
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->saveNetworks()V

    .line 586
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    .line 587
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2, v5}, Lcom/android/settings/wifi/ManageNetworks;->connect(IZ)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 435
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 436
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 471
    :cond_0
    :goto_0
    return v0

    .line 438
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 471
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 441
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 442
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ManageNetworks;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/ManageNetworks;->connect(IZ)V

    goto :goto_0

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    .line 447
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 448
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/ManageNetworks;->connect(IZ)V

    goto :goto_0

    .line 450
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/ManageNetworks;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 455
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ManageNetworks;->forget(I)V

    goto :goto_0

    .line 459
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mInXlSetupWizard:Z

    if-nez v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/ManageNetworks;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 465
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->launchWAPICertMgr()V

    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 265
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 414
    iget-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mInXlSetupWizard:Z

    if-nez v1, :cond_1

    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_1

    .line 415
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 418
    .local v0, "preference":Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    .line 419
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .end local v0    # "preference":Landroid/preference/Preference;
    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 420
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 422
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 423
    const/4 v1, 0x4

    const v2, 0x7f0b0310

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_1

    .line 426
    const/4 v1, 0x5

    const v2, 0x7f0b0311

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 427
    const/4 v1, 0x6

    const v2, 0x7f0b0312

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 431
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 364
    iget-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mInXlSetupWizard:Z

    if-nez v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 366
    .local v0, "wifiIsEnabled":Z
    const v1, 0x7f0b0032

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 370
    const/4 v1, 0x2

    const v2, 0x7f0b030e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 374
    const/4 v1, 0x3

    const v2, 0x7f0b030f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 380
    .end local v0    # "wifiIsEnabled":Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 382
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstst"    # Landroid/os/Bundle;

    .prologue
    .line 269
    const v1, 0x7f040080

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 386
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 408
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 388
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->showForgetAllDialog()V

    move v0, v7

    .line 389
    goto :goto_0

    .line 391
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->forceScan()V

    :cond_0
    move v0, v7

    .line 394
    goto :goto_0

    .line 397
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0354

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    .line 406
    goto :goto_0

    .line 404
    :cond_1
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 342
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 344
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 348
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mResetNetworks:Z

    if-eqz v0, :cond_1

    .line 349
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->enableNetworks()V

    .line 352
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->pause()V

    .line 355
    iget-boolean v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mInDrag:Z

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/settings/wifi/TouchInterceptor;

    invoke-virtual {v0}, Lcom/android/settings/wifi/TouchInterceptor;->cancelDragging()V

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mInDrag:Z

    .line 359
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 477
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 478
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2    # "preference":Landroid/preference/Preference;
    iput-object p2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 479
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/ManageNetworks;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 483
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 481
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 333
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 335
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    .line 337
    return-void
.end method
