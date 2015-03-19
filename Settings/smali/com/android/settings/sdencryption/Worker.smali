.class public Lcom/android/settings/sdencryption/Worker;
.super Ljava/lang/Object;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sdencryption/Worker$UnmountingDelayTimerTask;
    }
.end annotation


# instance fields
.field private SD_CARD_PATH:Ljava/lang/String;

.field private STEP_MOUNT:I

.field private STEP_START:I

.field private STEP_UNMOUNT:I

.field private encryptionListenerServer:Lcom/android/settings/sdencryption/IEncryptionListener;

.field private encryptionListenerUser:Lcom/android/settings/sdencryption/IEncryptionListener;

.field private isInProcess:Z

.field private isSDCardsPolicyChangesNeedAction:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentStep:I

.field private mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

.field private mEsph:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

.field private mIsMediaListenerRegister:Z

.field private mIsUserInitiator:Z

.field private mMountService:Landroid/os/storage/IMountService;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/android/settings/sdencryption/EncryptionState;)V
    .locals 2
    .param p1, "encryptionState"    # Lcom/android/settings/sdencryption/EncryptionState;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mMountService:Landroid/os/storage/IMountService;

    .line 52
    iput-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 54
    iput-object v1, p0, Lcom/android/settings/sdencryption/Worker;->encryptionListenerUser:Lcom/android/settings/sdencryption/IEncryptionListener;

    .line 55
    iput-object v1, p0, Lcom/android/settings/sdencryption/Worker;->encryptionListenerServer:Lcom/android/settings/sdencryption/IEncryptionListener;

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/sdencryption/Worker;->isInProcess:Z

    .line 59
    iput-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mTimer:Ljava/util/Timer;

    .line 60
    iput-boolean v0, p0, Lcom/android/settings/sdencryption/Worker;->mIsMediaListenerRegister:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/sdencryption/Worker;->isSDCardsPolicyChangesNeedAction:Z

    .line 62
    iput-object v1, p0, Lcom/android/settings/sdencryption/Worker;->SD_CARD_PATH:Ljava/lang/String;

    .line 63
    iput v0, p0, Lcom/android/settings/sdencryption/Worker;->STEP_START:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/sdencryption/Worker;->STEP_UNMOUNT:I

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/sdencryption/Worker;->STEP_MOUNT:I

    .line 66
    iget v0, p0, Lcom/android/settings/sdencryption/Worker;->STEP_START:I

    iput v0, p0, Lcom/android/settings/sdencryption/Worker;->mCurrentStep:I

    .line 117
    iput-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mEsph:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    .line 209
    new-instance v0, Lcom/android/settings/sdencryption/Worker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/Worker$1;-><init>(Lcom/android/settings/sdencryption/Worker;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 76
    iput-object p1, p0, Lcom/android/settings/sdencryption/Worker;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    .line 77
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionState;->getMyAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sdencryption/Worker;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/Worker;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sdencryption/Worker;->postMountAction(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sdencryption/Worker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/Worker;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/sdencryption/Worker;->mCurrentStep:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/sdencryption/Worker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/Worker;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/settings/sdencryption/Worker;->mCurrentStep:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/sdencryption/Worker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/Worker;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/settings/sdencryption/Worker;->mIsMediaListenerRegister:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/sdencryption/Worker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/Worker;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->SD_CARD_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/sdencryption/Worker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/Worker;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/sdencryption/Worker;->STEP_UNMOUNT:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/sdencryption/Worker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/Worker;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->stopTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/sdencryption/Worker;)Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/Worker;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mEsph:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/sdencryption/Worker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/Worker;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/sdencryption/Worker;->STEP_MOUNT:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/sdencryption/Worker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/Worker;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->mount()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/sdencryption/Worker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/Worker;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/sdencryption/Worker;->STEP_START:I

    return v0
.end method

.method private checkPostponeTimeExpired()V
    .locals 5

    .prologue
    .line 458
    iget-object v2, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/sdencryption/Util;->getExpiredTimeForAlertSubscribe(Landroid/content/Context;)J

    move-result-wide v0

    .line 460
    .local v0, "time":J
    const-string v2, "Worker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPostponeTimeExpired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;J)V

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/sdencryption/Util;->cancelTimeAlert(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private doUnmount()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 290
    const-string v2, "Worker"

    const-string v3, "Function doUnmount() has been called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 293
    .local v1, "mountService":Landroid/os/storage/IMountService;
    if-nez v1, :cond_0

    .line 294
    const-string v2, "Worker"

    const-string v3, "Error! From doUnmount: getMountService() returns null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/16 v2, -0x456

    invoke-direct {p0, v5, v2}, Lcom/android/settings/sdencryption/Worker;->postMountAction(ZI)V

    .line 307
    :goto_0
    return-void

    .line 300
    :cond_0
    :try_start_0
    const-string v2, "Worker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The mountService.unmountVolume() have been called for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/sdencryption/Worker;->SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v2, p0, Lcom/android/settings/sdencryption/Worker;->SD_CARD_PATH:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Worker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error! Unmount SD Card failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/16 v2, -0x457

    invoke-direct {p0, v5, v2}, Lcom/android/settings/sdencryption/Worker;->postMountAction(ZI)V

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 279
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 280
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 281
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mMountService:Landroid/os/storage/IMountService;

    .line 286
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 283
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "Worker"

    const-string v2, "Error! From getMountService(): Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 278
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private handlePolicyChangedAction(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 367
    const-string v2, "encryption_value"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 368
    .local v1, "iValue":I
    const-string v2, "Worker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New policy for SD Card with value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    iget-object v2, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settings/sdencryption/EncryptionStateVerificator;-><init>(Landroid/content/Context;)V

    .line 372
    .local v0, "esv":Lcom/android/settings/sdencryption/EncryptionStateVerificator;
    iget v2, v0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPolicy:I

    iget v3, v0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPersistValue:I

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/sdencryption/Worker;->isSDCardsPolicyChangesNeedAction:Z

    .line 375
    iget-object v2, p0, Lcom/android/settings/sdencryption/Worker;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {v2}, Lcom/android/settings/sdencryption/EncryptionState;->getIsLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    const-string v2, "Worker"

    const-string v3, "Warning! Delay reguest to change policy: encryption process is already running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v2, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    const/16 v3, 0x12c

    invoke-static {v2, v3}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;I)V

    .line 382
    :goto_1
    return-void

    .line 372
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 381
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->startEncryptionServerActivityForSdcard()V

    goto :goto_1
.end method

.method private mount()V
    .locals 5

    .prologue
    .line 310
    const-string v2, "Worker"

    const-string v3, "Function mount() has been called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 313
    .local v1, "mountService":Landroid/os/storage/IMountService;
    if-nez v1, :cond_0

    .line 314
    const-string v2, "Worker"

    const-string v3, "Error! From mount(): getMountService() returns null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    return-void

    .line 319
    :cond_0
    :try_start_0
    const-string v2, "Worker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The mountService.mountVolume() have been called for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/sdencryption/Worker;->SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v2, p0, Lcom/android/settings/sdencryption/Worker;->SD_CARD_PATH:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Worker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error! Mount SD Card failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v2, 0x1

    const/16 v3, -0x458

    invoke-direct {p0, v2, v3}, Lcom/android/settings/sdencryption/Worker;->postMountAction(ZI)V

    goto :goto_0
.end method

.method private postMountAction(ZI)V
    .locals 4
    .param p1, "isErrorOccured"    # Z
    .param p2, "mediaError"    # I

    .prologue
    const/4 v3, 0x0

    .line 162
    const-string v1, "Worker"

    const-string v2, "In the function postMountAction()."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/Worker;->unregisterMediaListener()V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->stopTimer()V

    .line 170
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {v1, v3}, Lcom/android/settings/sdencryption/EncryptionState;->setIsLocked(Z)V

    .line 171
    iput-boolean v3, p0, Lcom/android/settings/sdencryption/Worker;->isInProcess:Z

    .line 174
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->encryptionListenerUser:Lcom/android/settings/sdencryption/IEncryptionListener;

    if-eqz v1, :cond_0

    .line 175
    const-string v1, "Worker"

    const-string v2, "In the function postMountAction() for user: call onSDEncrStatusChange()."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->encryptionListenerUser:Lcom/android/settings/sdencryption/IEncryptionListener;

    invoke-interface {v1}, Lcom/android/settings/sdencryption/IEncryptionListener;->onSDEncrStatusChange()V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->encryptionListenerServer:Lcom/android/settings/sdencryption/IEncryptionListener;

    if-eqz v1, :cond_1

    .line 180
    const-string v1, "Worker"

    const-string v2, "In the function postMountAction() for server: call onSDEncrStatusChange()."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->encryptionListenerServer:Lcom/android/settings/sdencryption/IEncryptionListener;

    invoke-interface {v1}, Lcom/android/settings/sdencryption/IEncryptionListener;->onSDEncrStatusChange()V

    .line 187
    :cond_1
    if-nez p1, :cond_3

    .line 189
    const-string v1, "Worker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postMountAction(): mediaError="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-boolean v1, p0, Lcom/android/settings/sdencryption/Worker;->mIsUserInitiator:Z

    if-nez v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00d6

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 195
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/sdencryption/Util;->disableEncryptionBootCompleteReceiver(Landroid/content/Context;)V

    .line 199
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.android.encryption.settings.SDCARD_ENCRYPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 203
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/settings/sdencryption/Worker;->startErrorDialogActivity(I)V

    .line 204
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/sdencryption/Util;->stopEncryptionService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private registerMediaListener()V
    .locals 2

    .prologue
    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/sdencryption/Worker;->mIsMediaListenerRegister:Z

    .line 262
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 264
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 266
    :cond_0
    return-void
.end method

.method private setEnableUIPreferences(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->encryptionListenerUser:Lcom/android/settings/sdencryption/IEncryptionListener;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->encryptionListenerUser:Lcom/android/settings/sdencryption/IEncryptionListener;

    invoke-interface {v0, p1}, Lcom/android/settings/sdencryption/IEncryptionListener;->enablePreferences(Z)V

    .line 159
    :cond_0
    return-void
.end method

.method private startEncryptionServerActivity()V
    .locals 3

    .prologue
    .line 331
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/sdencryption/EncryptionServerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 333
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 334
    return-void
.end method

.method private startEncryptionServerActivityForSdcard()V
    .locals 5

    .prologue
    const/16 v4, 0x12c

    .line 419
    const-string v1, "Worker"

    const-string v2, "Prepare settings for start EncryptionServerActivity for SD Card"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/sdencryption/Worker;->isSDCardsPolicyChangesNeedAction:Z

    .line 423
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/sdencryption/EncryptionStateVerificator;-><init>(Landroid/content/Context;)V

    .line 425
    .local v0, "esv":Lcom/android/settings/sdencryption/EncryptionStateVerificator;
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/sdencryption/Util;->isSdcardEncryptionPostponed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    iget v1, v0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPolicy:I

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPersistValue:I

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/sdencryption/Util;->cleanPostponePreferences(Landroid/content/Context;)V

    .line 432
    :goto_0
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/sdencryption/Util;->stopEncryptionService(Landroid/content/Context;)V

    .line 452
    :goto_1
    return-void

    .line 430
    :cond_0
    const-string v1, "Worker"

    const-string v2, "The policy for SD CARD ignored. Reason: has been postponed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 434
    :cond_1
    iget v1, v0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPolicy:I

    iget v2, v0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPersistValue:I

    if-le v1, v2, :cond_2

    .line 435
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    const-string v2, "show_sdcard_policy_encryption_dialog"

    const-string v3, "true"

    invoke-static {v1, v2, v3}, Lcom/android/settings/sdencryption/Util;->setSharedPreferencesString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;I)V

    .line 437
    const-string v1, "Worker"

    const-string v2, "New policy for SD CARD: PREF_SHOW_SDCARD_POLICY_ENCRYPTION_DIALOG_KEY set to true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->startEncryptionServerActivity()V

    goto :goto_1

    .line 441
    :cond_2
    iget v1, v0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPolicy:I

    iget v2, v0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPersistValue:I

    if-ge v1, v2, :cond_3

    .line 442
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    const-string v2, "show_sdcard_policy_removed_dialog"

    const-string v3, "true"

    invoke-static {v1, v2, v3}, Lcom/android/settings/sdencryption/Util;->setSharedPreferencesString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;I)V

    .line 444
    const-string v1, "Worker"

    const-string v2, "New policy for SD CARD: PREF_SHOW_SDCARD_POLICY_REMOVED_DIALOG_KEY set to true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->startEncryptionServerActivity()V

    goto :goto_1

    .line 449
    :cond_3
    const-string v1, "Worker"

    const-string v2, "SD CARD policy has not been changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/sdencryption/Util;->stopEncryptionService(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private startErrorDialogActivity(I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 339
    iget-boolean v0, p0, Lcom/android/settings/sdencryption/Worker;->mIsUserInitiator:Z

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/sdencryption/Util;->cleanPostponePreferences(Landroid/content/Context;)V

    .line 342
    if-ne p1, v4, :cond_0

    .line 343
    const-string v0, "Worker"

    const-string v1, "startErrorDialogActivity(): subscribeForTimeAlert() to postpone for 1 hour"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 345
    iget-object v2, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    const-string v3, "request_policy_change_postponed_sdcard"

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/sdencryption/Util;->setSharedPreferencesLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;)V

    .line 353
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/sdencryption/Worker;->mIsUserInitiator:Z

    if-eqz v0, :cond_1

    if-ne p1, v4, :cond_1

    .line 354
    const/4 p1, 0x3

    .line 357
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/sdencryption/EncryptionErrorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 359
    const-string v1, "mount_error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 361
    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->stopTimer()V

    .line 471
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mTimer:Ljava/util/Timer;

    .line 472
    new-instance v0, Lcom/android/settings/sdencryption/Worker$UnmountingDelayTimerTask;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/Worker$UnmountingDelayTimerTask;-><init>(Lcom/android/settings/sdencryption/Worker;)V

    .line 473
    .local v0, "timerTask":Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mTimer:Ljava/util/Timer;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 474
    return-void
.end method

.method private stopGalleryIfRequired()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 507
    iget-object v3, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 508
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 510
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 511
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 513
    .local v1, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v3, "com.motorola.gallery.ViewImage"

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    const-string v3, "Worker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force to close package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 518
    .end local v1    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mTimer:Ljava/util/Timer;

    .line 482
    :cond_0
    return-void
.end method


# virtual methods
.method changeSDEncryptionSettings(Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;Z)V
    .locals 4
    .param p1, "esph"    # Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;
    .param p2, "isUserInitiator"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0, v2}, Lcom/android/settings/sdencryption/Worker;->setEnableUIPreferences(Z)V

    .line 125
    iput-object p1, p0, Lcom/android/settings/sdencryption/Worker;->mEsph:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    .line 126
    iput-boolean p2, p0, Lcom/android/settings/sdencryption/Worker;->mIsUserInitiator:Z

    .line 128
    invoke-static {}, Lcom/android/settings/sdencryption/MotoEnvironment;->getExternalAltStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 129
    .local v0, "extStorageDir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/sdencryption/Worker;->SD_CARD_PATH:Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/android/settings/sdencryption/Util;->isSdCardMounted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->SD_CARD_PATH:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 135
    const-string v1, "Worker"

    const-string v2, "Error! SD Card is mounted, but MotoEnvironment.getExternalAltStorageDirectory() returns null. Exiting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/16 v1, -0xb

    invoke-direct {p0, v3, v1}, Lcom/android/settings/sdencryption/Worker;->postMountAction(ZI)V

    .line 153
    :goto_1
    return-void

    .line 129
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 139
    :cond_1
    iget v1, p0, Lcom/android/settings/sdencryption/Worker;->STEP_UNMOUNT:I

    iput v1, p0, Lcom/android/settings/sdencryption/Worker;->mCurrentStep:I

    .line 140
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->stopGalleryIfRequired()V

    .line 141
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->registerMediaListener()V

    .line 142
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->startTimer()V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->doUnmount()V

    .line 144
    iput-boolean v3, p0, Lcom/android/settings/sdencryption/Worker;->isInProcess:Z

    goto :goto_1

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mEsph:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    if-eqz v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mEsph:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    invoke-virtual {v1}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->writePersistMemorySystemProperties()V

    .line 151
    :cond_3
    invoke-direct {p0, v2, v2}, Lcom/android/settings/sdencryption/Worker;->postMountAction(ZI)V

    goto :goto_1
.end method

.method public getIsInProcess()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/android/settings/sdencryption/Worker;->isInProcess:Z

    return v0
.end method

.method public handleTimeAlertAction()V
    .locals 2

    .prologue
    .line 390
    const-string v0, "Worker"

    const-string v1, "Handle time alert action"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/Worker;->startSyncProcess()V

    .line 392
    return-void
.end method

.method public isPoliciesSyncNeedAction()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/settings/sdencryption/Worker;->isSDCardsPolicyChangesNeedAction:Z

    return v0
.end method

.method public onStartCommand(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 82
    const-string v2, "Worker"

    const-string v3, "Enter onStartCommand ()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez p1, :cond_0

    .line 85
    const-string v2, "Worker"

    const-string v3, "Warning! From onStartCommand(): got bundle == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v2, "ACTION"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 90
    .local v0, "actionToDo":I
    const-string v2, "Worker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actionToDo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    packed-switch v0, :pswitch_data_0

    .line 112
    const-string v2, "Worker"

    const-string v3, "Enter onStartCommand (). Doing nothing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/sdencryption/Util;->stopEncryptionService(Landroid/content/Context;)V

    goto :goto_0

    .line 95
    :pswitch_0
    new-instance v1, Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    iget-object v2, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/sdencryption/EncryptionStateVerificator;-><init>(Landroid/content/Context;)V

    .line 97
    .local v1, "esv":Lcom/android/settings/sdencryption/EncryptionStateVerificator;
    iget v2, v1, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPolicy:I

    if-nez v2, :cond_1

    iget v2, v1, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPersistValue:I

    if-nez v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/sdencryption/Util;->cleanPostponePreferences(Landroid/content/Context;)V

    .line 100
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/sdencryption/Worker;->handlePolicyChangedAction(Landroid/os/Bundle;)V

    goto :goto_0

    .line 104
    .end local v1    # "esv":Lcom/android/settings/sdencryption/EncryptionStateVerificator;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/Worker;->handleTimeAlertAction()V

    goto :goto_0

    .line 108
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/Worker;->startSyncProcess()V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerEncryptionListener(Lcom/android/settings/sdencryption/IEncryptionListener;Z)V
    .locals 0
    .param p1, "encryptionListener"    # Lcom/android/settings/sdencryption/IEncryptionListener;
    .param p2, "isUserInitiated"    # Z

    .prologue
    .line 486
    if-eqz p2, :cond_0

    .line 487
    iput-object p1, p0, Lcom/android/settings/sdencryption/Worker;->encryptionListenerUser:Lcom/android/settings/sdencryption/IEncryptionListener;

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    iput-object p1, p0, Lcom/android/settings/sdencryption/Worker;->encryptionListenerServer:Lcom/android/settings/sdencryption/IEncryptionListener;

    goto :goto_0
.end method

.method public startSyncProcess()V
    .locals 2

    .prologue
    .line 395
    const-string v0, "Worker"

    const-string v1, "Start sync process if required."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionState;->getIsLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "Worker"

    const-string v1, "Warning! Delay reguest to change policy: encryption process is already running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;I)V

    .line 413
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->checkPostponeTimeExpired()V

    .line 405
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/sdencryption/Util;->isSdcardEncryptionSyncRequired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    const-string v0, "Worker"

    const-string v1, "During process (or before) a policy for SD Card has been changed. Resync is required."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0}, Lcom/android/settings/sdencryption/Worker;->startEncryptionServerActivityForSdcard()V

    goto :goto_0

    .line 410
    :cond_1
    const-string v0, "Worker"

    const-string v1, "Resync is NOT required"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/sdencryption/Util;->stopEncryptionService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public unregisterEncryptionListener(Z)V
    .locals 1
    .param p1, "isUserInitiated"    # Z

    .prologue
    const/4 v0, 0x0

    .line 495
    if-eqz p1, :cond_0

    .line 496
    iput-object v0, p0, Lcom/android/settings/sdencryption/Worker;->encryptionListenerUser:Lcom/android/settings/sdencryption/IEncryptionListener;

    .line 500
    :goto_0
    return-void

    .line 498
    :cond_0
    iput-object v0, p0, Lcom/android/settings/sdencryption/Worker;->encryptionListenerServer:Lcom/android/settings/sdencryption/IEncryptionListener;

    goto :goto_0
.end method

.method public unregisterMediaListener()V
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sdencryption/Worker;->mIsMediaListenerRegister:Z

    .line 271
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/sdencryption/Worker;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 274
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sdencryption/Worker;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 275
    return-void
.end method
