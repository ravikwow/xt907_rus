.class public Lcom/android/bluetooth/map/BluetoothMasService;
.super Landroid/app/Service;
.source "BluetoothMasService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnection;,
        Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;,
        Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

.field public static final VERBOSE:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

.field private mAuthSync:Ljava/lang/Object;

.field mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

.field private mEmailAccountObserver:Landroid/database/ContentObserver;

.field private mHasStarted:Z

.field private volatile mIsRequestBeingNotified:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSessionStatusHandler:Landroid/os/Handler;

.field private mStartId:I

.field mnsClient:Lcom/android/bluetooth/map/BluetoothMns;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    .line 77
    const-string v0, "BluetoothMasService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->DEBUG:Z

    .line 78
    const-string v0, "BluetoothMasService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    .line 201
    new-array v0, v2, [Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    .line 207
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    const/16 v3, 0xe

    const-class v4, Lcom/android/bluetooth/map/BluetoothMnsSmsMms;

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5}, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;-><init>(ILjava/lang/Class;I)V

    aput-object v2, v0, v1

    .line 208
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMasService;->MAS_INS_INFO:[Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    new-instance v1, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;

    const-class v2, Lcom/android/bluetooth/map/BluetoothMnsEmail;

    const/16 v3, 0x11

    invoke-direct {v1, v6, v2, v3}, Lcom/android/bluetooth/map/BluetoothMasService$MasInstanceInfo;-><init>(ILjava/lang/Class;I)V

    aput-object v1, v0, v6

    .line 209
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuthSync:Ljava/lang/Object;

    .line 167
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    .line 169
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    .line 173
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mHasStarted:Z

    .line 174
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mStartId:I

    .line 179
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mIsRequestBeingNotified:Z

    .line 391
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasService$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMasService$3;-><init>(Lcom/android/bluetooth/map/BluetoothMasService;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mSessionStatusHandler:Landroid/os/Handler;

    .line 234
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;-><init>(Lcom/android/bluetooth/map/BluetoothMasService;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    .line 235
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasService$1;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/map/BluetoothMasService$1;-><init>(Lcom/android/bluetooth/map/BluetoothMasService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mEmailAccountObserver:Landroid/database/ContentObserver;

    .line 242
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMasService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMasService$2;-><init>(Lcom/android/bluetooth/map/BluetoothMasService;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMasService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMasService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->updateEmailAccount()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMasService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMasService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/map/BluetoothMasService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMasService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/map/BluetoothMasService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMasService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuthSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/map/BluetoothMasService;)Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMasService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/bluetooth/map/BluetoothMasService;Lcom/android/bluetooth/map/BluetoothMapAuthenticator;)Lcom/android/bluetooth/map/BluetoothMapAuthenticator;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMasService;
    .param p1, "x1"    # Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/map/BluetoothMasService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMasService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasService;->createMapNotification(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMasService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMasService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->closeService()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/map/BluetoothMasService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMasService;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasService;->removeMapNotification(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/map/BluetoothMasService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMasService;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mIsRequestBeingNotified:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/map/BluetoothMasService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/map/BluetoothMasService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mIsRequestBeingNotified:Z

    return p1
.end method

.method private final closeService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 366
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothMasService"

    const-string v2, "MNS_BT: inside closeService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    if-eqz v1, :cond_2

    .line 369
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_1

    const-string v1, "BluetoothMasService"

    const-string v2, "MNS_BT: about to send MNS_BLUETOOTH_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMns;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 371
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mnsClient:Lcom/android/bluetooth/map/BluetoothMns;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :cond_2
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_3

    const-string v1, "BluetoothMasService"

    const-string v2, "MNS_BT: successfully sent MNS_BLUETOOTH_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->closeAll()V

    .line 378
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mHasStarted:Z

    .line 379
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMasService;->stopSelfResult(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 380
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_4

    const-string v1, "BluetoothMasService"

    const-string v2, "successfully stopped map service"

    :goto_0
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_4
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothMasService"

    const-string v2, "MNS_BT: exception while sending MNS_BLUETOOTH_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_5

    const-string v1, "BluetoothMasService"

    const-string v2, "MNS_BT: successfully sent MNS_BLUETOOTH_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->closeAll()V

    .line 378
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mHasStarted:Z

    .line 379
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/map/BluetoothMasService;->stopSelfResult(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 380
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_4

    const-string v1, "BluetoothMasService"

    const-string v2, "successfully stopped map service"

    goto :goto_0

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v2, :cond_6

    const-string v2, "BluetoothMasService"

    const-string v3, "MNS_BT: successfully sent MNS_BLUETOOTH_OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->closeAll()V

    .line 378
    iput-boolean v4, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mHasStarted:Z

    .line 379
    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mStartId:I

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMasService;->stopSelfResult(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 380
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v2, :cond_7

    const-string v2, "BluetoothMasService"

    const-string v3, "successfully stopped map service"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_7
    throw v1
.end method

.method private createMapNotification(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 436
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasService"

    const-string v1, "Creating MAS access notification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mIsRequestBeingNotified:Z

    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 478
    const-string v1, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string v1, "android.bluetooth.device.extra.CLASS_NAME"

    const-class v2, Lcom/android/bluetooth/map/BluetoothMasReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMasService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 483
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothMasService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Awaiting Authorization : MAS Connection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_1
    return-void
.end method

.method private notifyAuthCancelled()V
    .locals 3

    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuthSync:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->setCancelled(Z)V

    .line 507
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 508
    monitor-exit v1

    .line 509
    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyAuthKeyInput(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 495
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuthSync:Ljava/lang/Object;

    monitor-enter v1

    .line 496
    if-eqz p1, :cond_0

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->setSessionKey(Ljava/lang/String;)V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapAuthenticator;->setChallenged(Z)V

    .line 500
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAuth:Lcom/android/bluetooth/map/BluetoothMapAuthenticator;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 501
    monitor-exit v1

    .line 502
    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 305
    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "action":Ljava/lang/String;
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v6, :cond_0

    .line 307
    const-string v6, "BluetoothMasService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x80000000

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 311
    .local v5, "state":I
    const/4 v2, 0x1

    .line 312
    .local v2, "removeTimeoutMsg":Z
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 313
    const/16 v6, 0xd

    if-ne v5, v6, :cond_3

    .line 315
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->closeService()V

    .line 346
    :goto_0
    if-eqz v2, :cond_2

    .line 347
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v6, :cond_1

    const-string v6, "BluetoothMasService"

    const-string v7, "MAS access request notification flag off"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1
    iput-boolean v9, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mIsRequestBeingNotified:Z

    .line 351
    :cond_2
    return-void

    .line 317
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 319
    :cond_4
    const-string v6, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 320
    const-string v6, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {p1, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_7

    .line 323
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 324
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v6, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 325
    if-eqz v1, :cond_6

    .line 326
    invoke-virtual {v1, v10}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    move-result v3

    .line 327
    .local v3, "result":Z
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v6, :cond_5

    const-string v6, "BluetoothMasService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setTrust() result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v3    # "result":Z
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->updateEmailAccount()V

    .line 333
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v6, v1}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->initiateObexServerSession(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 329
    :cond_6
    const-string v6, "BluetoothMasService"

    const-string v7, "No BluetoothDevice from intent"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 335
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_7
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->stopObexServerSessionWaiting()V

    goto :goto_0

    .line 337
    :cond_8
    const-string v6, "com.android.bluetooth.map.authresponse"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 338
    const-string v6, "com.android.bluetooth.map.sessionkey"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "sessionkey":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/bluetooth/map/BluetoothMasService;->notifyAuthKeyInput(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    .end local v4    # "sessionkey":Ljava/lang/String;
    :cond_9
    const-string v6, "com.android.bluetooth.map.authcancelled"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 341
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->notifyAuthCancelled()V

    goto/16 :goto_0

    .line 343
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private removeMapNotification(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 489
    .local v0, "context":Landroid/content/Context;
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 491
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 492
    return-void
.end method

.method private updateEmailAccount()V
    .locals 10

    .prologue
    .line 215
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v8, :cond_0

    const-string v8, "BluetoothMasService"

    const-string v9, "updateEmailAccount()"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getEmailAccountIdList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 217
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v7, "notAssigned":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v5}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->removeMasIdIfNotPresent(Ljava/util/List;)V

    .line 219
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 220
    .local v4, "id":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getMasId(J)I

    move-result v6

    .line 221
    .local v6, "masId":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_1

    .line 222
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .end local v4    # "id":Ljava/lang/Long;
    .end local v6    # "masId":I
    :cond_2
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    const/4 v8, 0x1

    if-gt v2, v8, :cond_4

    .line 226
    invoke-static {v2}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v0

    .line 227
    .local v0, "accountId":J
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 228
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9, v2}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->updateMapTable(JI)V

    .line 225
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 231
    .end local v0    # "accountId":J
    :cond_4
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 387
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothMasService"

    const-string v1, "Map Service onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 255
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 256
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v2, :cond_0

    .line 257
    const-string v2, "BluetoothMasService"

    const-string v3, "Map Service onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mConnectionManager:Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMasService$BluetoothMasObexConnectionManager;->init()V

    .line 260
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 262
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mHasStarted:Z

    if-nez v2, :cond_2

    .line 263
    iput-boolean v5, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mHasStarted:Z

    .line 264
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v2, :cond_1

    const-string v2, "BluetoothMasService"

    const-string v3, "Starting MAS instances"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    .line 267
    .local v1, "state":I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 268
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 273
    .end local v1    # "state":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->EMAIL_ACCOUNT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mEmailAccountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 276
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.ACTION_MAP_DISCONNECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/bluetooth/map/BluetoothMasService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    return-void

    .line 269
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .restart local v1    # "state":I
    :cond_3
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v2, :cond_2

    .line 270
    const-string v2, "BluetoothMasService"

    const-string v3, "BT is not ON, no start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 355
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "BluetoothMasService"

    const-string v1, "Map Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 359
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mEmailAccountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 360
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMasService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 361
    invoke-static {}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->clearMapTable()V

    .line 362
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->closeService()V

    .line 363
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 282
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 283
    const-string v1, "BluetoothMasService"

    const-string v2, "Map Service onStartCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 285
    .local v0, "retCode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 286
    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mStartId:I

    .line 287
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMasService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_2

    .line 288
    const-string v1, "BluetoothMasService"

    const-string v2, "Stopping BluetoothMasService: device does not have BT or device is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMasService;->closeService()V

    .line 300
    :cond_1
    :goto_0
    return v0

    .line 295
    :cond_2
    if-eqz p1, :cond_1

    .line 296
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMasService;->parseIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
