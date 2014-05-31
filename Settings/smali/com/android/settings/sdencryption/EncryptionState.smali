.class public Lcom/android/settings/sdencryption/EncryptionState;
.super Ljava/lang/Object;
.source "EncryptionState.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsAppLocked:Z

.field private mWorker:Lcom/android/settings/sdencryption/Worker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sdencryption/EncryptionState;->mIsAppLocked:Z

    .line 18
    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionState;->mWorker:Lcom/android/settings/sdencryption/Worker;

    .line 19
    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionState;->mContext:Landroid/content/Context;

    .line 22
    const-string v0, "EncryptionApplication"

    const-string v1, "EncryptionState has been created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionState;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/android/settings/sdencryption/Worker;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/Worker;-><init>(Lcom/android/settings/sdencryption/EncryptionState;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionState;->mWorker:Lcom/android/settings/sdencryption/Worker;

    .line 25
    return-void
.end method


# virtual methods
.method public getIsLocked()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/settings/sdencryption/EncryptionState;->mIsAppLocked:Z

    return v0
.end method

.method public getMyAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getWorker()Lcom/android/settings/sdencryption/Worker;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionState;->mWorker:Lcom/android/settings/sdencryption/Worker;

    return-object v0
.end method

.method public setIsLocked(Z)V
    .locals 0
    .param p1, "isAppLocked"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/settings/sdencryption/EncryptionState;->mIsAppLocked:Z

    .line 29
    return-void
.end method
