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


# static fields
.field private static final HOTSPOT_ENABLED:Z


# instance fields
.field private mAccessPoints:Lcom/android/settings/ProgressCategory;

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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    const-string v2, "ro.mot.wifi.hotspot"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/settings/wifi/ManageNetworks;->HOTSPOT_ENABLED:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 138
    iput-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mResetNetworks:Z

    .line 139
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

    .line 698
    const/4 v3, -0x1

    .line 699
    .local v3, "origPrio":I
    if-ne p1, v8, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 702
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

    .line 704
    iget v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    const v6, 0x1869b

    if-lt v5, v6, :cond_4

    .line 705
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 706
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v5, v2}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 707
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v5, v8, :cond_2

    .line 708
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 709
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 710
    add-int/lit8 v5, v2, 0x1

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 711
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 705
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 714
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    .line 718
    .end local v2    # "i":I
    :cond_4
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 719
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    iput p1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 720
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ManageNetworks;->getNetworkConfig(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 721
    .local v4, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_5

    .line 722
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    .line 724
    if-eqz p2, :cond_5

    .line 725
    iget v3, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 729
    :cond_5
    iget v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 731
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 732
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->saveNetworks()V

    .line 734
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/ManageNetworks;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v5, p1, v6}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 736
    if-eqz p2, :cond_0

    .line 737
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1, v3}, Landroid/net/wifi/WifiManager;->restorePrioAfterConnection(II)Z

    .line 738
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

    .line 746
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_1

    .line 747
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 748
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v5, v8, :cond_0

    .line 749
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 746
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 753
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 754
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_3

    .line 755
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

    .line 756
    .local v4, "remConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_2

    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v5, v8, :cond_2

    .line 757
    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_1

    .line 762
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "remConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    iput-boolean v7, p0, Lcom/android/settings/wifi/ManageNetworks;->mResetNetworks:Z

    .line 763
    return-void
.end method

.method private forget(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 677
    return-void
.end method

.method private forgetAllNetworks()V
    .locals 6

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 683
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 684
    check-cast v3, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 685
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->preloaded_ssid:Z

    if-eqz v3, :cond_1

    .line 686
    const-string v3, "ManageNetworks"

    const-string v4, "Its a preloaded SSID. Hence don\'t delete"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 688
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 692
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_2
    const-string v3, "ManageNetworks"

    const-string v4, "All AP prefs removed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/wifi/ManageNetworks;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->forgetAllNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 695
    return-void
.end method

.method private getNetworkConfig(I)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "netId"    # I

    .prologue
    const/4 v3, 0x0

    .line 951
    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 953
    .local v2, "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v2, :cond_1

    move-object v1, v3

    .line 963
    :cond_0
    :goto_0
    return-object v1

    .line 956
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 957
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 958
    .local v1, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v4, p1, :cond_0

    .line 956
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    move-object v1, v3

    .line 963
    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 851
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 853
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->updateWifiState(I)V

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 856
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    goto :goto_0

    .line 857
    :cond_2
    const-string v2, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 858
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 859
    iput-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 861
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    goto :goto_0

    .line 862
    :cond_4
    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 863
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 864
    const-string v2, "newState"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SupplicantState;

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 867
    :cond_5
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 868
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mNetworkStateChanged:Z

    .line 869
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 871
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_6

    .line 872
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 873
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 875
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mNetworkStateChanged:Z

    goto :goto_0

    .line 876
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7
    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 877
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/ManageNetworks;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method private launchWAPICertMgr()V
    .locals 4

    .prologue
    .line 930
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 931
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    const-string v2, "vnd.motorola.wapicertificatemanager/vnd.motorola.wapi.certs"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/ManageNetworks;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    :goto_0
    return-void

    .line 935
    :catch_0
    move-exception v0

    .line 936
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
    .line 942
    .local p1, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ManageNetworks$7;-><init>(Lcom/android/settings/wifi/ManageNetworks;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 947
    return-void
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 649
    const/4 v0, 0x1

    return v0
.end method

.method private saveNetworks()V
    .locals 4

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 771
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 772
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mInXlSetupWizard:Z

    if-nez v2, :cond_0

    .line 773
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 770
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 777
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 629
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 630
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 631
    return-void
.end method

.method private showForgetAllDialog()V
    .locals 3

    .prologue
    .line 634
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$ForgetAllDialog;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ManageNetworks$ForgetAllDialog;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ForgetAllDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/ManageNetworks$ForgetAllDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method private declared-synchronized updateAccessPoints()V
    .locals 10

    .prologue
    .line 781
    monitor-enter p0

    :try_start_0
    iget-boolean v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mInDrag:Z

    if-eqz v8, :cond_1

    .line 782
    const-string v8, "ManageNetworks"

    const-string v9, " Update access point dragging true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    :cond_0
    monitor-exit p0

    return-void

    .line 786
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v1, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 788
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_7

    .line 789
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    .line 790
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 792
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v9, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    if-le v8, v9, :cond_2

    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    const v9, 0x1869c

    if-ge v8, v9, :cond_2

    .line 794
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastPriority:I

    .line 798
    :cond_2
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v8, :cond_4

    .line 799
    const/4 v8, 0x2

    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 805
    :cond_3
    :goto_1
    sget-boolean v8, Lcom/android/settings/wifi/ManageNetworks;->HOTSPOT_ENABLED:Z

    if-eqz v8, :cond_5

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/ManageNetworks;->isHotSpotSsid(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 806
    const-string v8, "ManageNetworks"

    const-string v9, "Not adding ATT Hotspots in the list of managed networks"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 781
    .end local v1    # "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 800
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

    .line 801
    const/4 v8, 0x0

    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 808
    :cond_5
    iget-boolean v8, v2, Landroid/net/wifi/WifiConfiguration;->preloaded_ssid:Z

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09000c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 810
    const-string v8, "ManageNetworks"

    const-string v9, "Not adding Preloaded SSIDs in the list of managed networks"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 814
    :cond_6
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 815
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->updateforManageNetwork()V

    .line 816
    iget-object v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v9, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v8, v9}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 817
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 822
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-object v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v7

    .line 823
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v7, :cond_9

    .line 824
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 825
    .local v6, "result":Landroid/net/wifi/ScanResult;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 826
    .restart local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v6}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    goto :goto_2

    .line 832
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "result":Landroid/net/wifi/ScanResult;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 834
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/ManageNetworks;->mForgetAll:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 835
    iget-object v8, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v8}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 836
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ManageNetworks;->orderOnPriority(Ljava/util/List;)V

    .line 838
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

    .line 840
    .restart local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Landroid/net/wifi/WifiConfiguration;->preloaded_ssid:Z

    if-eqz v8, :cond_a

    .line 841
    const-string v8, "ManageNetworks"

    const-string v9, "Its a preloaded SSID and hence disable the preference"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/settings/wifi/AccessPoint;->setEnabled(Z)V

    .line 845
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 883
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 884
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->pause()V

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_4

    .line 889
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->pause()V

    .line 894
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 895
    if-eqz p1, :cond_2

    .line 896
    iput-object p1, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 901
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_2
    if-lez v1, :cond_5

    .line 903
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 904
    .local v2, "preference":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 905
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 906
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings/wifi/ManageNetworks;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 901
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 891
    .end local v1    # "i":I
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->resume()V

    goto :goto_1

    .line 910
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

    .line 912
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    .line 913
    iget-boolean v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mNetworkStateChanged:Z

    if-eqz v3, :cond_0

    .line 914
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->enableNetworks()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 919
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->resume()V

    .line 921
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    .line 927
    :goto_0
    return-void

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->pause()V

    .line 925
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0
.end method


# virtual methods
.method public changeAndSavePrio(II)Z
    .locals 18
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 498
    const/4 v10, 0x0

    .line 499
    .local v10, "startConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    .line 500
    .local v8, "src":Lcom/android/settings/wifi/AccessPoint;
    const/4 v7, 0x0

    .local v7, "prevPrio":I
    const/4 v12, 0x0

    .line 501
    .local v12, "tempPrio":I
    const/4 v11, 0x1

    .line 504
    .local v11, "stepBy":I
    add-int/lit8 v9, p1, -0x1

    .line 505
    .local v9, "start":I
    add-int/lit8 v3, p2, -0x1

    .line 506
    .local v3, "end":I
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    .line 507
    const/4 v11, -0x1

    .line 509
    :cond_0
    if-gez v3, :cond_1

    .line 510
    const/4 v3, 0x0

    .line 512
    :cond_1
    if-ne v9, v3, :cond_2

    .line 513
    const/4 v15, 0x0

    .line 564
    :goto_0
    return v15

    .line 516
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v14

    .line 518
    .local v14, "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v14, :cond_3

    .line 519
    const/4 v15, 0x0

    goto :goto_0

    .line 520
    :cond_3
    move v4, v9

    .local v4, "i":I
    :goto_1
    add-int v15, v3, v11

    if-eq v4, v15, :cond_9

    .line 521
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

    .line 522
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 523
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v6, -0x1

    .line 524
    .local v6, "netid":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/ManageNetworks;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    add-int/lit8 v16, v4, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .end local v8    # "src":Lcom/android/settings/wifi/AccessPoint;
    check-cast v8, Lcom/android/settings/wifi/AccessPoint;

    .line 525
    .restart local v8    # "src":Lcom/android/settings/wifi/AccessPoint;
    if-eqz v8, :cond_6

    .line 526
    iget v6, v8, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 527
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

    .line 531
    :cond_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v5, v15, -0x1

    .local v5, "j":I
    :goto_2
    if-ltz v5, :cond_5

    .line 532
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 533
    .local v13, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v13, :cond_8

    iget v15, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v15, v6, :cond_8

    .line 534
    iput v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 535
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

    .line 536
    if-ne v4, v9, :cond_7

    .line 537
    move-object v10, v2

    .line 538
    iget v7, v13, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 543
    iget v15, v13, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    iput v15, v2, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    .line 520
    .end local v13    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    :goto_3
    add-int/2addr v4, v11

    goto/16 :goto_1

    .line 529
    .end local v5    # "j":I
    :cond_6
    if-ne v4, v9, :cond_4

    .line 530
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 546
    .restart local v5    # "j":I
    .restart local v13    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    iget v12, v13, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 547
    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 548
    move v7, v12

    .line 553
    iget v15, v13, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    iput v15, v2, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    .line 554
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15, v2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    goto :goto_3

    .line 531
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 559
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "j":I
    .end local v6    # "netid":I
    .end local v13    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_9
    if-eqz v10, :cond_a

    .line 560
    iput v7, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 561
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15, v10}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 563
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 564
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method public error(I)V
    .locals 2
    .param p1, "messageResId"    # I

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 657
    return-void
.end method

.method public isHotSpotSsid(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v4, 0x22

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 967
    sget-boolean v0, Lcom/android/settings/wifi/ManageNetworks;->HOTSPOT_ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    :cond_0
    move v0, v1

    .line 983
    :goto_0
    return v0

    .line 971
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 972
    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_4

    .line 973
    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 977
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040667

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040668

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040669

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104066a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    move v0, v2

    .line 981
    goto :goto_0

    .line 975
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v1

    .line 983
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 276
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 277
    const v0, 0x7f05001e

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ManageNetworks;->addPreferencesFromResource(I)V

    .line 278
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ManageNetworks;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 280
    const-string v0, "access_points"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ManageNetworks;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    .line 284
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/settings/wifi/TouchInterceptor;

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mStartListener:Lcom/android/settings/wifi/TouchInterceptor$StartListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/TouchInterceptor;->setStartListener(Lcom/android/settings/wifi/TouchInterceptor$StartListener;)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/settings/wifi/TouchInterceptor;

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mDropListener:Lcom/android/settings/wifi/TouchInterceptor$DropListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/TouchInterceptor;->setDropListener(Lcom/android/settings/wifi/TouchInterceptor$DropListener;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ManageNetworks;->registerForContextMenu(Landroid/view/View;)V

    .line 288
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ManageNetworks$4;-><init>(Lcom/android/settings/wifi/ManageNetworks;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 298
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ManageNetworks$5;-><init>(Lcom/android/settings/wifi/ManageNetworks;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 308
    new-instance v0, Lcom/android/settings/wifi/ManageNetworks$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/ManageNetworks$6;-><init>(Lcom/android/settings/wifi/ManageNetworks;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 318
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->setHasOptionsMenu(Z)V

    .line 321
    const-string v0, "forget_all"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ManageNetworks;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mForgetAll:Landroid/preference/Preference;

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    .line 325
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/settings/wifi/TouchInterceptor;

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mStartListener:Lcom/android/settings/wifi/TouchInterceptor$StartListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/TouchInterceptor;->setStartListener(Lcom/android/settings/wifi/TouchInterceptor$StartListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/settings/wifi/TouchInterceptor;

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mDropListener:Lcom/android/settings/wifi/TouchInterceptor$DropListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/TouchInterceptor;->setDropListener(Lcom/android/settings/wifi/TouchInterceptor$DropListener;)V

    .line 328
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 259
    instance-of v0, p1, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iput-boolean v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mInXlSetupWizard:Z

    .line 260
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 570
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v2, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "dialogClassName":Ljava/lang/String;
    const-string v2, "android.app.AlertDialog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 576
    if-ne p2, v3, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->forgetAllNetworks()V

    goto :goto_0

    .line 581
    :cond_2
    const/4 v2, -0x3

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_4

    .line 586
    sget-boolean v2, Lcom/android/settings/wifi/ManageNetworks;->HOTSPOT_ENABLED:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->isHotSpotSsid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 587
    const-string v2, "ManageNetworks"

    const-string v3, "Not forgetting Hot Spot when AutoConnect is on"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const v2, 0x7f0b0926

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->error(I)V

    goto :goto_0

    .line 594
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->forget(I)V

    goto :goto_0

    .line 600
    :cond_4
    if-ne p2, v3, :cond_0

    .line 601
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 603
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_5

    .line 604
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

    .line 605
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/ManageNetworks;->connect(IZ)V

    goto :goto_0

    .line 607
    :cond_5
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v3, :cond_0

    .line 608
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 610
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/ManageNetworks;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 612
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_6

    .line 615
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->reassociate()Z

    .line 616
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/ManageNetworks;->connect(IZ)V

    goto/16 :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 436
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_1

    .line 437
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 481
    :cond_0
    :goto_0
    return v0

    .line 439
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 481
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 442
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 443
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ManageNetworks;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/ManageNetworks;->connect(IZ)V

    goto :goto_0

    .line 446
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v2, :cond_3

    .line 448
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 449
    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/ManageNetworks;->connect(IZ)V

    goto :goto_0

    .line 451
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/ManageNetworks;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 457
    :pswitch_2
    sget-boolean v2, Lcom/android/settings/wifi/ManageNetworks;->HOTSPOT_ENABLED:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/ManageNetworks;->isHotSpotSsid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 458
    const-string v0, "ManageNetworks"

    const-string v2, "Not forgetting Hot Spot when AutoConnect is on"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const v0, 0x7f0b0926

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ManageNetworks;->error(I)V

    move v0, v1

    .line 460
    goto :goto_0

    .line 463
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ManageNetworks;->forget(I)V

    goto :goto_0

    .line 469
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mInXlSetupWizard:Z

    if-nez v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/ManageNetworks;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 475
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->launchWAPICertMgr()V

    goto :goto_0

    .line 439
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

    .line 413
    iget-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mInXlSetupWizard:Z

    if-nez v1, :cond_2

    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_2

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 417
    .local v0, "preference":Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 418
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .end local v0    # "preference":Landroid/preference/Preference;
    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 419
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 421
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 422
    const/4 v1, 0x4

    const v2, 0x7f0b0353

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_2

    .line 425
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->preloaded_ssid:Z

    if-nez v1, :cond_2

    .line 426
    :cond_1
    const/4 v1, 0x5

    const v2, 0x7f0b0354

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 427
    const/4 v1, 0x6

    const v2, 0x7f0b0355

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 432
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 363
    iget-boolean v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mInXlSetupWizard:Z

    if-nez v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 365
    .local v0, "wifiIsEnabled":Z
    const v1, 0x7f0b0079

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 369
    const/4 v1, 0x2

    const v2, 0x7f0b0351

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 373
    const/4 v1, 0x3

    const v2, 0x7f0b0352

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 379
    .end local v0    # "wifiIsEnabled":Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 381
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstst"    # Landroid/os/Bundle;

    .prologue
    .line 269
    const v1, 0x7f04009b

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

    .line 385
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 407
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 387
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->showForgetAllDialog()V

    move v0, v7

    .line 388
    goto :goto_0

    .line 390
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->forceScan()V

    :cond_0
    move v0, v7

    .line 393
    goto :goto_0

    .line 396
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b03a2

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    .line 405
    goto :goto_0

    .line 403
    :cond_1
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/ManageNetworks;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 385
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
    .line 341
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 343
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mResetNetworks:Z

    if-eqz v0, :cond_1

    .line 348
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->enableNetworks()V

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mScanner:Lcom/android/settings/wifi/ManageNetworks$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ManageNetworks$Scanner;->pause()V

    .line 354
    iget-boolean v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mInDrag:Z

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mTrackList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/settings/wifi/TouchInterceptor;

    invoke-virtual {v0}, Lcom/android/settings/wifi/TouchInterceptor;->cancelDragging()V

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mInDrag:Z

    .line 358
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 487
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 488
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2    # "preference":Landroid/preference/Preference;
    iput-object p2, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 489
    iget-object v0, p0, Lcom/android/settings/wifi/ManageNetworks;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/ManageNetworks;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 493
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 491
    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 332
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/wifi/ManageNetworks;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/ManageNetworks;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/ManageNetworks;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    invoke-direct {p0}, Lcom/android/settings/wifi/ManageNetworks;->updateAccessPoints()V

    .line 336
    return-void
.end method
