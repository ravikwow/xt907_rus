.class public Lcom/android/settings/sdencryption/EncryptionPinActivity;
.super Landroid/app/Activity;
.source "EncryptionPinActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final SDPIN_ADMINERR:I

.field private final SDPIN_CANCEL:I

.field private final SDPIN_DPWDERR:I

.field private final SDPIN_ENTER:I

.field private final SDPIN_EXT_DIR:Ljava/io/File;

.field private final SDPIN_FAIL:I

.field private final SDPIN_FAILDEV:I

.field private final SDPIN_FAILDKEY:I

.field private final SDPIN_FAILPWD:I

.field private final SDPIN_INIT:I

.field private final SDPIN_MAXRETRY:I

.field private final SDPIN_NONE:I

.field private final SDPIN_OK:I

.field private final SDPIN_PROP_SD_MODE:Ljava/lang/String;

.field private final SDPIN_RETRY:I

.field private final SDPIN_SYNC:I

.field private final SDPIN_SYNCMODE:I

.field private final SDPIN_SYNCPWD:I

.field private final SDPIN_SYNC_CANCEL:Ljava/lang/String;

.field private final SDPIN_SYNC_DONE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mCanceler:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEncryptAdmin:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

.field private mEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

.field private mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mMountService:Landroid/os/storage/IMountService;

.field private mPin:Landroid/widget/EditText;

.field private mPinDialog:Landroid/app/AlertDialog;

.field private mPinResult:I

.field private mPinRetries:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x5

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const-string v0, "EncryptionPinActivity"

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->TAG:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_MAXRETRY:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_OK:I

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_INIT:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_FAIL:I

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_FAILDEV:I

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_FAILPWD:I

    .line 64
    iput v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_FAILDKEY:I

    .line 65
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_SYNC:I

    .line 66
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_SYNCMODE:I

    .line 67
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_SYNCPWD:I

    .line 68
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_ENTER:I

    .line 69
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_RETRY:I

    .line 70
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_NONE:I

    .line 71
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_CANCEL:I

    .line 72
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_ADMINERR:I

    .line 73
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_DPWDERR:I

    .line 76
    const-string v0, "vold.mot.encrypt.sd.mode"

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_PROP_SD_MODE:Ljava/lang/String;

    .line 79
    const-string v0, "done"

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_SYNC_DONE:Ljava/lang/String;

    .line 80
    const-string v0, "cancel"

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_SYNC_CANCEL:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/android/settings/sdencryption/MotoEnvironment;->getExternalAltStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_EXT_DIR:Ljava/io/File;

    .line 100
    iput-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    iput-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mDialog:Landroid/app/AlertDialog;

    .line 747
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionPinActivity$9;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity$9;-><init>(Lcom/android/settings/sdencryption/EncryptionPinActivity;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    .line 765
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionPinActivity$10;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity$10;-><init>(Lcom/android/settings/sdencryption/EncryptionPinActivity;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mCanceler:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sdencryption/EncryptionPinActivity;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionPinActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->processIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/sdencryption/EncryptionPinActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionPinActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getUserPwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/sdencryption/EncryptionPinActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionPinActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->validateVolume(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/sdencryption/EncryptionPinActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionPinActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/sdencryption/EncryptionPinActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionPinActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getDevPwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/sdencryption/EncryptionPinActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionPinActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->syncVolume(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/sdencryption/EncryptionPinActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionPinActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->processMessage(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/sdencryption/EncryptionPinActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionPinActivity;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mInProgress:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/sdencryption/EncryptionPinActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionPinActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->myUnregisterReceiver()V

    return-void
.end method

.method private getCardMode()I
    .locals 2

    .prologue
    .line 627
    const-string v0, "vold.mot.encrypt.sd.mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getDevPwd()Ljava/lang/String;
    .locals 4

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getEncryptAdmin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    const-string v1, "EncryptionPinActivity"

    const-string v2, "Encrypt admin manager is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 601
    const/4 v0, 0x0

    .line 607
    :goto_0
    return-object v0

    .line 604
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mEncryptAdmin:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    invoke-virtual {v1}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->getSavedPasswordHash()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "hash":Ljava/lang/String;
    const-string v1, "EncryptionPinActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nDevice pwd hash="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDeviceMode()I
    .locals 3

    .prologue
    .line 621
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v1

    const-string v2, "mem_encr_key_type"

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getEncryptionSystemProperty(Ljava/lang/String;)I

    move-result v0

    .line 623
    .local v0, "value":I
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private getEncryptAdmin()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 437
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mEncryptAdmin:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    if-eqz v0, :cond_0

    .line 443
    :goto_0
    return v1

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mContext:Landroid/content/Context;

    const-string v2, "mot_encryption_admin"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mEncryptAdmin:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    .line 443
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mEncryptAdmin:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getEncryptionMode()I
    .locals 3

    .prologue
    .line 611
    invoke-static {}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    move-result-object v1

    const-string v2, "memory_encr"

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getEncryptionSystemProperty(Ljava/lang/String;)I

    move-result v0

    .line 614
    .local v0, "value":I
    if-nez v0, :cond_0

    .line 615
    const/4 v1, 0x0

    .line 617
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getMountService()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 460
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mMountService:Landroid/os/storage/IMountService;

    if-eqz v2, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v1

    .line 464
    :cond_1
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 465
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 466
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mMountService:Landroid/os/storage/IMountService;

    .line 469
    :cond_2
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mMountService:Landroid/os/storage/IMountService;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUserPwd()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 576
    const/4 v0, 0x0

    .line 578
    .local v0, "pin":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPin:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-object v1

    .line 582
    :cond_1
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getEncryptAdmin()Z

    move-result v2

    if-nez v2, :cond_2

    .line 589
    const-string v2, "EncryptionPinActivity"

    const-string v3, "Encrypt admin manager is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 594
    :cond_2
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mEncryptAdmin:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/encryption/EncryptionAdminManager;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private myUnregisterReceiver()V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 732
    return-void

    .line 729
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private processIntent(Landroid/content/Intent;)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 634
    if-nez p1, :cond_0

    .line 635
    const-string v7, "EncryptionPinActivity"

    const-string v8, "processIntent: Invalid null intent!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->finish()V

    .line 722
    :goto_0
    return v6

    .line 640
    :cond_0
    const-string v8, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 641
    iget-object v8, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v6, v7

    .line 642
    goto :goto_0

    .line 646
    :cond_1
    const-string v8, "SDPIN_RESULT"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, "result":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 648
    const-string v7, "EncryptionPinActivity"

    const-string v8, "processIntent empty result!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->finish()V

    goto :goto_0

    .line 653
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinResult:I

    .line 654
    iget v8, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinResult:I

    if-ltz v8, :cond_3

    iget v8, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinResult:I

    if-le v8, v10, :cond_4

    .line 655
    :cond_3
    const-string v7, "EncryptionPinActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processIntent invalid result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinResult:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->finish()V

    goto :goto_0

    .line 660
    :cond_4
    iput-boolean v7, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mInProgress:Z

    .line 661
    iget v8, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinResult:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    .line 663
    const/4 v2, 0x0

    .line 664
    .local v2, "message_id":I
    iget v6, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinRetries:I

    if-lez v6, :cond_5

    .line 665
    const/16 v2, 0xa

    .line 672
    :goto_1
    iget-object v6, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v6, v7

    .line 673
    goto :goto_0

    .line 668
    :cond_5
    const/16 v2, 0x9

    .line 669
    iput v7, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinRetries:I

    goto :goto_1

    .line 677
    .end local v2    # "message_id":I
    :cond_6
    iget v8, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinResult:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_b

    .line 678
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getCardMode()I

    move-result v4

    .line 679
    .local v4, "smode":I
    if-nez v4, :cond_7

    .line 680
    iget-object v8, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0b0130

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 683
    iget-object v8, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v6, v7

    .line 684
    goto/16 :goto_0

    .line 687
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getDeviceMode()I

    move-result v1

    .line 688
    .local v1, "dmode":I
    if-nez v1, :cond_8

    .line 689
    iget-object v6, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xb

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v6, v7

    .line 690
    goto/16 :goto_0

    .line 693
    :cond_8
    if-eq v1, v4, :cond_9

    .line 694
    iget-object v6, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v6, v7

    .line 695
    goto/16 :goto_0

    .line 698
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getDevPwd()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "devPwd":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getUserPwd()Ljava/lang/String;

    move-result-object v5

    .line 701
    .local v5, "userPwd":Ljava/lang/String;
    if-eqz v5, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 703
    iget-object v6, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v6, v7

    .line 704
    goto/16 :goto_0

    .line 707
    :cond_a
    const-string v6, "done"

    invoke-direct {p0, v6}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->syncVolume(Ljava/lang/String;)V

    move v6, v7

    .line 708
    goto/16 :goto_0

    .line 712
    .end local v0    # "devPwd":Ljava/lang/String;
    .end local v1    # "dmode":I
    .end local v4    # "smode":I
    .end local v5    # "userPwd":Ljava/lang/String;
    :cond_b
    iget v6, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinResult:I

    if-ne v6, v10, :cond_d

    .line 713
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getDevPwd()Ljava/lang/String;

    move-result-object v0

    .line 715
    .restart local v0    # "devPwd":Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_c

    .line 716
    iget-object v6, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v6, v7

    .line 717
    goto/16 :goto_0

    .line 719
    :cond_c
    iput v7, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinRetries:I

    .line 721
    .end local v0    # "devPwd":Ljava/lang/String;
    :cond_d
    iget-object v6, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    iget v8, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinResult:I

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v6, v7

    .line 722
    goto/16 :goto_0
.end method

.method private processMessage(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    const v4, 0x7f0b0124

    const/4 v8, -0x1

    const/4 v7, -0x2

    const v6, 0x1040013

    const/4 v5, 0x0

    .line 217
    const-string v1, "EncryptionPinActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPin:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPin:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 223
    packed-switch p1, :pswitch_data_0

    .line 430
    :pswitch_0
    const-string v1, "EncryptionPinActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_0
    return-void

    .line 225
    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mInProgress:Z

    .line 226
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getDevPwd()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->validateVolume(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->finish()V

    goto :goto_0

    .line 234
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mInProgress:Z

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->finish()V

    goto :goto_0

    .line 238
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0128

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mCanceler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 245
    .local v0, "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mDialog:Landroid/app/AlertDialog;

    .line 246
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 247
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 248
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 249
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 252
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mCanceler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 259
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mDialog:Landroid/app/AlertDialog;

    .line 260
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 261
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 262
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 263
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 266
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0129

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mCanceler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 273
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mDialog:Landroid/app/AlertDialog;

    .line 274
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 275
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 276
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 277
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 280
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mCanceler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 287
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mDialog:Landroid/app/AlertDialog;

    .line 288
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 289
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 290
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 291
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 294
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPin:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0126

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/sdencryption/EncryptionPinActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity$2;-><init>(Lcom/android/settings/sdencryption/EncryptionPinActivity;)V

    invoke-virtual {v1, v8, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 305
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x1040009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mCanceler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v7, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 433
    :goto_1
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 311
    :pswitch_7
    iget v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinRetries:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 313
    iput v5, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinRetries:I

    goto/16 :goto_0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPin:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 317
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinRetries:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/sdencryption/EncryptionPinActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity$3;-><init>(Lcom/android/settings/sdencryption/EncryptionPinActivity;)V

    invoke-virtual {v1, v8, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 328
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x1040009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mCanceler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v7, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 332
    iget v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinRetries:I

    goto :goto_1

    .line 335
    :pswitch_8
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/sdencryption/EncryptionPinActivity$4;

    invoke-direct {v3, p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity$4;-><init>(Lcom/android/settings/sdencryption/EncryptionPinActivity;)V

    invoke-virtual {v1, v8, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 345
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x1040009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mCanceler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v7, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 351
    :pswitch_9
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getEncryptionMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 352
    const-string v1, "done"

    invoke-direct {p0, v1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->syncVolume(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->finish()V

    .line 355
    :cond_2
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b012c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/sdencryption/EncryptionPinActivity$5;

    invoke-direct {v3, p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity$5;-><init>(Lcom/android/settings/sdencryption/EncryptionPinActivity;)V

    invoke-virtual {v1, v8, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 365
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/sdencryption/EncryptionPinActivity$6;

    invoke-direct {v3, p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity$6;-><init>(Lcom/android/settings/sdencryption/EncryptionPinActivity;)V

    invoke-virtual {v1, v7, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 375
    :pswitch_a
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getEncryptionMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 378
    const-string v1, "done"

    invoke-direct {p0, v1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->syncVolume(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->finish()V

    .line 383
    :cond_3
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b012d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/sdencryption/EncryptionPinActivity$7;

    invoke-direct {v3, p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity$7;-><init>(Lcom/android/settings/sdencryption/EncryptionPinActivity;)V

    invoke-virtual {v1, v8, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 393
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/sdencryption/EncryptionPinActivity$8;

    invoke-direct {v3, p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity$8;-><init>(Lcom/android/settings/sdencryption/EncryptionPinActivity;)V

    invoke-virtual {v1, v7, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_1

    .line 402
    :pswitch_b
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mCanceler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 409
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mDialog:Landroid/app/AlertDialog;

    .line 410
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 411
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 412
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 413
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 416
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mCanceler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 423
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mDialog:Landroid/app/AlertDialog;

    .line 424
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 425
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 426
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 427
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method private syncVolume(Ljava/lang/String;)V
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getMountService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    const-string v1, "EncryptionPinActivity"

    const-string v2, "Mount service is not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :goto_0
    return-void

    .line 546
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_EXT_DIR:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mMountService:Landroid/os/storage/IMountService;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_EXT_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, v3}, Landroid/os/storage/IMountService;->validateVolume(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->finish()V

    goto :goto_0

    .line 549
    :cond_1
    :try_start_1
    const-string v1, "EncryptionPinActivity"

    const-string v2, "Error! External memory card is not available in syncVolume()!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "EncryptionPinActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDPIN exp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Z
    .locals 9
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 475
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getCardMode()I

    move-result v1

    .line 476
    .local v1, "smode":I
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getDeviceMode()I

    move-result v0

    .line 477
    .local v0, "dmode":I
    const-string v4, "EncryptionPinActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "From validatePassword(): smode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-eq v1, v7, :cond_0

    if-ne v1, v8, :cond_4

    .line 481
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 483
    :cond_1
    iget v4, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinRetries:I

    if-lez v4, :cond_3

    .line 484
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    move v2, v3

    .line 507
    :cond_2
    :goto_1
    return v2

    .line 487
    :cond_3
    iget-object v4, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 488
    iput v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinRetries:I

    goto :goto_0

    .line 497
    :cond_4
    if-eq v0, v7, :cond_5

    if-ne v0, v8, :cond_2

    .line 498
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 500
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getEncryptionMode()I

    move-result v2

    if-nez v2, :cond_7

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->finish()V

    :cond_7
    move v2, v3

    .line 504
    goto :goto_1
.end method

.method private validateVolume(Ljava/lang/String;)V
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xc

    .line 511
    invoke-direct {p0, p1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->validatePassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 512
    const-string v2, "EncryptionPinActivity"

    const-string v3, "Invalid password entered!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getMountService()Z

    move-result v2

    if-nez v2, :cond_2

    .line 517
    const-string v2, "EncryptionPinActivity"

    const-string v3, "Mount service is not available!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 522
    :cond_2
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_EXT_DIR:Ljava/io/File;

    if-nez v2, :cond_3

    .line 523
    const-string v2, "EncryptionPinActivity"

    const-string v3, "Error! External memory card is not available in validateVolume()!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 529
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->SDPIN_EXT_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, p1, v4}, Landroid/os/storage/IMountService;->validateVolume(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    .line 530
    .local v1, "status":I
    if-eqz v1, :cond_0

    .line 531
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    .end local v1    # "status":I
    :catch_0
    move-exception v0

    .line 534
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "EncryptionPinActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDPIN exp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mContext:Landroid/content/Context;

    .line 108
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    .line 109
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04008f

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mView:Landroid/view/View;

    .line 110
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mView:Landroid/view/View;

    const v2, 0x7f080162

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPin:Landroid/widget/EditText;

    .line 111
    iput v4, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinResult:I

    .line 112
    iput v4, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinRetries:I

    .line 114
    iput-object v3, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mMountService:Landroid/os/storage/IMountService;

    .line 115
    iput-object v3, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mEncryptService:Lcom/motorola/android/internal/encryption/IEncryptionService;

    .line 116
    iput-object v3, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mEncryptAdmin:Lcom/motorola/android/internal/encryption/EncryptionAdminManager;

    .line 118
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0124

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    .line 123
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 127
    iput-boolean v4, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mInProgress:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->processIntent(Landroid/content/Intent;)Z

    .line 131
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 206
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 211
    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mDialog:Landroid/app/AlertDialog;

    .line 213
    :cond_1
    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPinDialog:Landroid/app/AlertDialog;

    .line 214
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 197
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 183
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPin:Landroid/widget/EditText;

    const-string v1, "SD_PIN"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 178
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    const-string v0, "SD_PIN"

    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 151
    new-instance v2, Lcom/android/settings/sdencryption/EncryptionPinActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity$1;-><init>(Lcom/android/settings/sdencryption/EncryptionPinActivity;)V

    iput-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.motorola.android.encryption.settings.START_PIN_ACTIVITY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 167
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v1, "media":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 192
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->myUnregisterReceiver()V

    .line 193
    return-void
.end method
