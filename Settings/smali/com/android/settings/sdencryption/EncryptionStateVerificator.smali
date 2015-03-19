.class public Lcom/android/settings/sdencryption/EncryptionStateVerificator;
.super Ljava/lang/Object;
.source "EncryptionStateVerificator.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

.field public mSDEncPersistValue:I

.field public mSDEncPolicy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPolicy:I

    .line 26
    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPersistValue:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 31
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->load()V

    .line 33
    return-void
.end method

.method private getCombinedSDEncPersistValue()I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    invoke-direct {v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;-><init>()V

    .line 64
    .local v0, "esph":Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;
    const-string v4, "memory_encr"

    invoke-virtual {v0, v4}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "value":I
    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v2

    .line 68
    :cond_1
    const-string v4, "mem_encr_key_type"

    invoke-virtual {v0, v4}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->getValue(Ljava/lang/String;)I

    move-result v1

    .line 69
    if-lt v1, v3, :cond_0

    move v2, v3

    .line 72
    goto :goto_0
.end method


# virtual methods
.method public final isSDEncSyncRequired()Z
    .locals 3

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPolicy:I

    iget v1, p0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPersistValue:I

    if-le v0, v1, :cond_0

    .line 51
    const-string v0, "EncryptionStateVerificator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync required for SD Card: mSDEncPolicy > mSDEncPersistValue. mSDEncPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mSDEncPersistValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPersistValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    .line 56
    :cond_0
    const-string v0, "EncryptionStateVerificator"

    const-string v1, "Sync not required for SD Card"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    if-nez v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mContext:Landroid/content/Context;

    const-string v2, "mot_device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mMotDPM:Lcom/motorola/motepm/MotDevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/motepm/MotDevicePolicyManager;->getExternalStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    .line 42
    .local v0, "isSDEncReq":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPolicy:I

    .line 44
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->getCombinedSDEncPersistValue()I

    move-result v1

    iput v1, p0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPersistValue:I

    .line 45
    return-void

    .line 42
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
