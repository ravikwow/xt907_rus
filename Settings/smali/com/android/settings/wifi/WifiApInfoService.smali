.class public Lcom/android/settings/wifi/WifiApInfoService;
.super Landroid/app/Service;
.source "WifiApInfoService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApInfoService$LocalBinder;
    }
.end annotation


# static fields
.field private static mBlackListedMacList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mConnectedDevicesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/ConnectedDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static mMaxConnectedDevices:I

.field private static mRestartHs:Z


# instance fields
.field private diffRxBytes:J

.field private diffTxBytes:J

.field private isAttFeatureEnabled:Z

.field private isTxRxByte:Z

.field private mBatteryTimeoutValue:J

.field private final mBinder:Landroid/os/IBinder;

.field private mBlaskListSta:Ljava/lang/Runnable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentIface:Ljava/lang/String;

.field private mDeferedNotificationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/ConnectedDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceActivityCheck:Ljava/lang/Runnable;

.field private mDeviceStatSharedPref:Landroid/content/SharedPreferences;

.field private mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLinkStatsPoll:Ljava/lang/Runnable;

.field private mNoOfClientDevice:I

.field private mNotificationIntent:Landroid/app/PendingIntent;

.field private mNotifyManager:Landroid/app/NotificationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRefreshConnectedDeviceList:Ljava/lang/Runnable;

.field private mRes:Landroid/content/res/Resources;

.field private mSharedPrefService:Landroid/content/SharedPreferences;

.field private mTimeoutActive:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegExs:[Ljava/lang/String;

.field private prevRxBytes:J

.field private prevTxBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiApInfoService;->mRestartHs:Z

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    const-string v0, "null"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;

    .line 79
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    .line 84
    iput v3, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNoOfClientDevice:I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->isTxRxByte:Z

    .line 90
    iput-wide v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->prevTxBytes:J

    .line 91
    iput-wide v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->prevRxBytes:J

    .line 92
    iput-wide v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->diffTxBytes:J

    .line 93
    iput-wide v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->diffRxBytes:J

    .line 94
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApInfoService;->isAttFeatureEnabled:Z

    .line 98
    new-instance v0, Lcom/android/settings/wifi/WifiApInfoService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApInfoService$1;-><init>(Lcom/android/settings/wifi/WifiApInfoService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRefreshConnectedDeviceList:Ljava/lang/Runnable;

    .line 170
    new-instance v0, Lcom/android/settings/wifi/WifiApInfoService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApInfoService$2;-><init>(Lcom/android/settings/wifi/WifiApInfoService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceActivityCheck:Ljava/lang/Runnable;

    .line 183
    new-instance v0, Lcom/android/settings/wifi/WifiApInfoService$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApInfoService$3;-><init>(Lcom/android/settings/wifi/WifiApInfoService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;

    .line 453
    new-instance v0, Lcom/android/settings/wifi/WifiApInfoService$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApInfoService$4;-><init>(Lcom/android/settings/wifi/WifiApInfoService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 564
    new-instance v0, Lcom/android/settings/wifi/WifiApInfoService$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApInfoService$5;-><init>(Lcom/android/settings/wifi/WifiApInfoService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBlaskListSta:Ljava/lang/Runnable;

    .line 687
    new-instance v0, Lcom/android/settings/wifi/WifiApInfoService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApInfoService$LocalBinder;-><init>(Lcom/android/settings/wifi/WifiApInfoService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBinder:Landroid/os/IBinder;

    .line 709
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApInfoService;Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;
    .param p1, "x1"    # Lcom/android/settings/wifi/ConnectedDevice;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApInfoService;->updateNotificationDetails(Lcom/android/settings/wifi/ConnectedDevice;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wifi/WifiApInfoService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiApInfoService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->diffTxBytes:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/settings/wifi/WifiApInfoService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/android/settings/wifi/WifiApInfoService;->diffTxBytes:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiApInfoService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->prevTxBytes:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/settings/wifi/WifiApInfoService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/android/settings/wifi/WifiApInfoService;->prevTxBytes:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiApInfoService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->diffRxBytes:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/settings/wifi/WifiApInfoService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/android/settings/wifi/WifiApInfoService;->diffRxBytes:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiApInfoService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->prevRxBytes:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/WifiApInfoService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;
    .param p1, "x1"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/android/settings/wifi/WifiApInfoService;->prevRxBytes:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/android/settings/wifi/WifiApInfoService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApInfoService;->isTxRxByte:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotificationIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApInfoService;ZLcom/android/settings/wifi/ConnectedDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/settings/wifi/ConnectedDevice;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiApInfoService;->updateConnDisconnNotification(ZLcom/android/settings/wifi/ConnectedDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRefreshConnectedDeviceList:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiApInfoService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiRegExs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/settings/wifi/WifiApInfoService;->mRestartHs:Z

    return v0
.end method

.method static synthetic access$2502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 42
    sput-boolean p0, Lcom/android/settings/wifi/WifiApInfoService;->mRestartHs:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/WifiApInfoService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceActivityCheck:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/WifiApInfoService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApInfoService;->clearUnBlackList()V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/settings/wifi/WifiApInfoService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/settings/wifi/WifiApInfoService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApInfoService;->setMaxDeviceNotification()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/settings/wifi/WifiApInfoService;->mMaxConnectedDevices:I

    return v0
.end method

.method static synthetic access$3000()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApInfoService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNoOfClientDevice:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/WifiApInfoService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNoOfClientDevice:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApInfoService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->isAttFeatureEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApInfoService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApInfoService;->checkStartIdleCheckTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApInfoService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiApInfoService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApInfoService;->updateDisconnNotification()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApInfoService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApInfoService;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:J

    return-wide v0
.end method

.method private checkAttFeatureEnabled()Z
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private checkStartIdleCheckTimer()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 325
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->isAttFeatureEnabled:Z

    if-eqz v0, :cond_2

    .line 326
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->isTxRxByte:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 327
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    if-nez v0, :cond_0

    .line 328
    const-string v0, "WifiApInfoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No data usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceActivityCheck:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceActivityCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 339
    :cond_2
    sget-object v0, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_3

    .line 341
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    if-nez v0, :cond_0

    .line 342
    const-string v0, "WifiApInfoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No device connected - monitor idle for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    .line 344
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceActivityCheck:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 348
    :cond_3
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    .line 349
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceActivityCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private clearUnBlackList()V
    .locals 4

    .prologue
    .line 584
    const-string v2, "WifiApInfoService"

    const-string v3, "Unblack ALL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBlaskListSta:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, "numBlackMacs":I
    sget-object v3, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    monitor-enter v3

    .line 588
    :try_start_0
    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 589
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 590
    .end local v0    # "numBlackMacs":I
    .local v1, "numBlackMacs":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "numBlackMacs":I
    .restart local v0    # "numBlackMacs":I
    if-lez v1, :cond_0

    .line 591
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBlaskListSta:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    move v1, v0

    .end local v0    # "numBlackMacs":I
    .restart local v1    # "numBlackMacs":I
    goto :goto_0

    .line 589
    .end local v1    # "numBlackMacs":I
    .restart local v0    # "numBlackMacs":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 594
    :cond_0
    return-void
.end method

.method private setMaxDeviceNotification()Z
    .locals 8

    .prologue
    const v7, 0x7f0b0091

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 427
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080682

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 431
    .local v0, "n":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0092

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotificationIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 435
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 436
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 437
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 438
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 439
    return v5
.end method

.method private updateConnDisconnNotification(ZLcom/android/settings/wifi/ConnectedDevice;)Z
    .locals 8
    .param p1, "isConnect"    # Z
    .param p2, "c"    # Lcom/android/settings/wifi/ConnectedDevice;

    .prologue
    const v7, 0x7f0b0089

    const v6, 0x7f0b0088

    const/4 v1, 0x1

    .line 365
    if-eqz p1, :cond_2

    .line 366
    iget-object v2, p2, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    const-string v3, "0.0.0.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_0
    const/4 v1, 0x0

    .line 401
    :goto_0
    return v1

    .line 374
    :cond_1
    new-instance v0, Landroid/app/Notification;

    const v2, 0x7f0200cb

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 377
    .local v0, "n":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotificationIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 381
    const-string v2, "WifiApInfoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connect : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_1
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 398
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 399
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 400
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 384
    .end local v0    # "n":Landroid/app/Notification;
    :cond_2
    new-instance v0, Landroid/app/Notification;

    const v2, 0x7f0200cc

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b0090

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 387
    .restart local v0    # "n":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0b008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/settings/wifi/ConnectedDevice;->mIPAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/settings/wifi/ConnectedDevice;->mMACAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotificationIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 392
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 393
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 395
    :cond_3
    const-string v2, "WifiApInfoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnect : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/settings/wifi/ConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateDisconnNotification()Z
    .locals 10

    .prologue
    const v9, 0x7f0b0093

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 407
    new-instance v1, Landroid/app/Notification;

    const v3, 0x1080683

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 410
    .local v1, "n":Landroid/app/Notification;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 411
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const/high16 v3, 0x40000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 413
    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 415
    .local v2, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b0094

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 419
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 420
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 421
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 422
    const/4 v3, 0x1

    return v3
.end method

.method private updateNotificationDetails(Lcom/android/settings/wifi/ConnectedDevice;)V
    .locals 1
    .param p1, "c"    # Lcom/android/settings/wifi/ConnectedDevice;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/WifiApInfoService;->updateConnDisconnNotification(ZLcom/android/settings/wifi/ConnectedDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeferedNotificationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 360
    :cond_0
    return-void
.end method


# virtual methods
.method initServiceSharedPrefs()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mSharedPrefService:Landroid/content/SharedPreferences;

    const-string v1, "wifi_ap_battery_timeout"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiApInfoService;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mSharedPrefService:Landroid/content/SharedPreferences;

    const-string v1, "wifi_ap_max_connected_devices"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiApInfoService;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 603
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    .line 604
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApInfoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 605
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApInfoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    .line 606
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApInfoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 607
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/wifi/WifiApManageDevices;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 609
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotificationIntent:Landroid/app/PendingIntent;

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRes:Landroid/content/res/Resources;

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mContentResolver:Landroid/content/ContentResolver;

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SOFTAP_DEVICE_SETTINGS.XML"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mSharedPrefService:Landroid/content/SharedPreferences;

    .line 614
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->initServiceSharedPrefs()V

    .line 615
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mSharedPrefService:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 616
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SHARED_PREFERENCE_DEVICE_STATS"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;

    .line 617
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceStatSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 618
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 619
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiApInfoService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 620
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "motorola.net.wifi.MAX_DEVICES_ALERT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiApInfoService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 621
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiRegExs:[Ljava/lang/String;

    .line 622
    sget-object v0, Lcom/android/settings/wifi/WifiApInfoService;->mConnectedDevicesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 623
    sput-boolean v4, Lcom/android/settings/wifi/WifiApInfoService;->mRestartHs:Z

    .line 624
    iput v4, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNoOfClientDevice:I

    .line 625
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApInfoService;->checkAttFeatureEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->isAttFeatureEnabled:Z

    .line 626
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 627
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mRefreshConnectedDeviceList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 665
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mDeviceActivityCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 666
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mTimeoutActive:Z

    .line 667
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApInfoService;->mCurrentIface:Ljava/lang/String;

    monitor-enter v1

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mLinkStatsPoll:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 669
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApInfoService;->clearUnBlackList()V

    .line 671
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 672
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 673
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 674
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mNotifyManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 675
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApInfoService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 676
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mSharedPrefService:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 677
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 678
    return-void

    .line 669
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 691
    const-string v0, "WifiApInfoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged triggered for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v0, "wifi_ap_battery_timeout"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mSharedPrefService:Landroid/content/SharedPreferences;

    const-string v1, "wifi_ap_battery_timeout"

    const-wide/32 v2, 0xdbba0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBatteryTimeoutValue:J

    .line 696
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApInfoService;->checkStartIdleCheckTimer()V

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    const-string v0, "wifi_ap_max_connected_devices"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApInfoService;->mSharedPrefService:Landroid/content/SharedPreferences;

    const-string v1, "wifi_ap_max_connected_devices"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/WifiApInfoService;->mMaxConnectedDevices:I

    .line 701
    sget v0, Lcom/android/settings/wifi/WifiApInfoService;->mMaxConnectedDevices:I

    if-nez v0, :cond_0

    .line 703
    const/16 v0, 0xa

    sput v0, Lcom/android/settings/wifi/WifiApInfoService;->mMaxConnectedDevices:I

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 631
    const-string v2, "WifiApInfoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received start id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 634
    const-string v2, "unblacklist_mac"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 636
    const-string v2, "WifiApInfoService"

    const-string v3, "Recieved a UnBlacklist request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v2, "mac_string"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 638
    const-string v2, "mac_string"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "mac":Ljava/lang/String;
    const-string v2, "WifiApInfoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblack MAC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    sget-object v3, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    monitor-enter v3

    .line 641
    :try_start_0
    sget-object v2, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/WifiApManageDevices;->isWhiteListAllEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    const-string v2, "WifiApInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending blaclist commmand for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    sget-object v4, Lcom/android/settings/wifi/WifiApInfoService;->mBlackListedMacList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/WifiManager;->manageSta(Ljava/util/List;Z)V

    .line 646
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApInfoService;->mBlaskListSta:Ljava/lang/Runnable;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 659
    .end local v0    # "mac":Ljava/lang/String;
    :cond_1
    :goto_0
    return v6

    .line 646
    .restart local v0    # "mac":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 649
    .end local v0    # "mac":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApInfoService;->clearUnBlackList()V

    goto :goto_0

    .line 651
    :cond_3
    const-string v2, "restart_hotspot"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 652
    sput-boolean v6, Lcom/android/settings/wifi/WifiApInfoService;->mRestartHs:Z

    .line 653
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 654
    .local v1, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 655
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 656
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApInfoService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0
.end method
