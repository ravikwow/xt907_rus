.class public Lcom/android/settings/sdencryption/EncryptionServerActivity;
.super Landroid/app/Activity;
.source "EncryptionServerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/android/settings/sdencryption/IEncryptionListener;


# instance fields
.field private final INDEFINITE_POSTPONE_ENC_CHANGE_POLICY_DIALOG_ID:I

.field private final POLICY_REMOVE_DIALOG_ID:I

.field private final POSTPONE_ENC_CHANGE_POLICY_DIALOG_ID:I

.field private final PROGRESS_BAR_DIALOG_ID:I

.field private final SDCARD_ENC_CHANGE_POLICY_DIALOG_ID:I

.field private final SDCARD_ENC_CHANGE_POLICY_INFO_DIALOG_ID:I

.field private mConnection:Landroid/content/ServiceConnection;

.field private mEncryptionService:Lcom/android/settings/sdencryption/EncryptionSettingsService;

.field private mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

.field private mEsv:Lcom/android/settings/sdencryption/EncryptionStateVerificator;

.field mIsBound:Z

.field private mLastDislogId:I

.field mSavedInstanceState:Landroid/os/Bundle;

.field private mWorker:Lcom/android/settings/sdencryption/Worker;

.field private onCancelListenerIndefPostponeSDCardEncryption:Landroid/content/DialogInterface$OnCancelListener;

.field private onCancelListenerPostponeSDCardEncryption:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEsv:Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    .line 46
    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->SDCARD_ENC_CHANGE_POLICY_INFO_DIALOG_ID:I

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->SDCARD_ENC_CHANGE_POLICY_DIALOG_ID:I

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->POSTPONE_ENC_CHANGE_POLICY_DIALOG_ID:I

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->INDEFINITE_POSTPONE_ENC_CHANGE_POLICY_DIALOG_ID:I

    .line 52
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->POLICY_REMOVE_DIALOG_ID:I

    .line 53
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->PROGRESS_BAR_DIALOG_ID:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I

    .line 58
    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionService:Lcom/android/settings/sdencryption/EncryptionSettingsService;

    .line 59
    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mIsBound:Z

    .line 61
    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 389
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionServerActivity$8;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity$8;-><init>(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->onCancelListenerPostponeSDCardEncryption:Landroid/content/DialogInterface$OnCancelListener;

    .line 396
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionServerActivity$9;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity$9;-><init>(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->onCancelListenerIndefPostponeSDCardEncryption:Landroid/content/DialogInterface$OnCancelListener;

    .line 496
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionServerActivity$11;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity$11;-><init>(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/sdencryption/EncryptionServerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionServerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionServerActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->prepareChangeSDEncryptionSettings()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionServerActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->runOnResume()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionServerActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->changeSDEncryptionSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/sdencryption/EncryptionServerActivity;JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionServerActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->postponeChangeEncryptionSettings(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionServerActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->postponeChangeEncryptionSettingsIndefinitely()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionServerActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->selfClose()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/sdencryption/EncryptionServerActivity;)Lcom/android/settings/sdencryption/EncryptionState;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionServerActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/sdencryption/EncryptionServerActivity;Lcom/android/settings/sdencryption/EncryptionState;)Lcom/android/settings/sdencryption/EncryptionState;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionServerActivity;
    .param p1, "x1"    # Lcom/android/settings/sdencryption/EncryptionState;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/sdencryption/EncryptionServerActivity;)Lcom/android/settings/sdencryption/EncryptionSettingsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionServerActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionService:Lcom/android/settings/sdencryption/EncryptionSettingsService;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/sdencryption/EncryptionServerActivity;Lcom/android/settings/sdencryption/EncryptionSettingsService;)Lcom/android/settings/sdencryption/EncryptionSettingsService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionServerActivity;
    .param p1, "x1"    # Lcom/android/settings/sdencryption/EncryptionSettingsService;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionService:Lcom/android/settings/sdencryption/EncryptionSettingsService;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/settings/sdencryption/EncryptionServerActivity;Lcom/android/settings/sdencryption/Worker;)Lcom/android/settings/sdencryption/Worker;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionServerActivity;
    .param p1, "x1"    # Lcom/android/settings/sdencryption/Worker;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionServerActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->runOnCreate()V

    return-void
.end method

.method private changeSDEncryptionSettings()V
    .locals 3

    .prologue
    .line 198
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 199
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->getESPHForPolicy()Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    move-result-object v0

    .line 200
    .local v0, "esph":Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/sdencryption/Worker;->changeSDEncryptionSettings(Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;Z)V

    .line 201
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/sdencryption/Util;->cleanPostponePreferences(Landroid/content/Context;)V

    .line 202
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/sdencryption/Util;->cleanReceivedPoliciesFlags(Landroid/content/Context;)V

    .line 203
    return-void
.end method

.method private changeSDEncryptionSettingsDirectly()V
    .locals 4

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->getESPHForPolicy()Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    move-result-object v0

    .line 445
    .local v0, "esph":Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;
    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->writePersistMemorySystemProperties()V

    .line 447
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/sdencryption/Util;->cleanPostponePreferences(Landroid/content/Context;)V

    .line 448
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/sdencryption/Util;->cleanReceivedPoliciesFlags(Landroid/content/Context;)V

    .line 450
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    invoke-virtual {v2}, Lcom/android/settings/sdencryption/Worker;->isPoliciesSyncNeedAction()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/sdencryption/Util;->isSdcardEncryptionSyncRequired(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    const v2, 0x7f0b00d6

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 456
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.android.encryption.settings.SDCARD_ENCRYPTION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 459
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->selfClose()V

    .line 460
    return-void
.end method

.method private checkEncryptionSyncStatus()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "EncryptionServerActivity"

    const-string v1, "From checkEncryptionSyncStatus(): reading from preferences written by WorkerService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v0, "show_sdcard_policy_encryption_dialog"

    invoke-static {p0, v0}, Lcom/android/settings/sdencryption/Util;->getSharedPreferencesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;I)V

    .line 160
    const-string v0, "EncryptionServerActivity"

    const-string v1, "From checkEncryptionSyncStatus(): PREF_SHOW_SDCARD_POLICY_ENCRYPTION_DIALOG_KEY is not null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 172
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v0, "show_sdcard_policy_removed_dialog"

    invoke-static {p0, v0}, Lcom/android/settings/sdencryption/Util;->getSharedPreferencesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    const-string v0, "EncryptionServerActivity"

    const-string v1, "From checkEncryptionSyncStatus(): PREF_SHOW_SDCARD_POLICY_REMOVED_DIALOG_KEY is not null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I

    .line 166
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->policyRemoved()V

    goto :goto_0

    .line 169
    :cond_1
    const-string v0, "EncryptionServerActivity"

    const-string v1, "From checkEncryptionSyncStatus(): All keys are null. Call selfClose()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->selfClose()V

    goto :goto_0
.end method

.method private getESPHForPolicy()Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    invoke-direct {v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;-><init>()V

    .line 208
    .local v0, "esph":Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;
    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->setValuesForMemoryPolicy()V

    .line 209
    return-object v0
.end method

.method private initStateVerificator()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEsv:Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/sdencryption/EncryptionStateVerificator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEsv:Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEsv:Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->load()V

    goto :goto_0
.end method

.method private policyRemoved()V
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sdencryption/Util;->cleanPostponePreferences(Landroid/content/Context;)V

    .line 176
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 177
    return-void
.end method

.method private postponeChangeEncryptionSettings(JLjava/lang/String;)V
    .locals 9
    .param p1, "posponeTimeInHours"    # J
    .param p3, "txtToastMsg"    # Ljava/lang/String;

    .prologue
    const-wide/16 v7, 0x3c

    .line 405
    const-string v0, "request_policy_change_postponed_sdcard"

    .line 407
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-long v5, p1, v7

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long v1, v3, v5

    .line 409
    .local v1, "timeToPostpone":J
    const-string v3, "EncryptionServerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "From postponeChangeEncryptionSettings: timeToPostp - sys="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Lcom/android/settings/sdencryption/Util;->setSharedPreferencesLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 413
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/sdencryption/Util;->cleanReceivedPoliciesFlags(Landroid/content/Context;)V

    .line 416
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;)V

    .line 418
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    invoke-virtual {v3}, Lcom/android/settings/sdencryption/Worker;->isPoliciesSyncNeedAction()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/sdencryption/Util;->isSdcardEncryptionSyncRequired(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 420
    const/4 v3, 0x1

    invoke-static {p0, p3, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 423
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->selfClose()V

    .line 424
    return-void
.end method

.method private postponeChangeEncryptionSettingsIndefinitely()V
    .locals 4

    .prologue
    .line 428
    const-string v1, "request_policy_change_postponed_sdcard"

    .line 430
    .local v1, "timeKey":Ljava/lang/String;
    const-string v0, "request_policy_change_postponed_indefinitely_sdcard"

    .line 433
    .local v0, "indefinitKey":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/sdencryption/Util;->cleanSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "TRUE"

    invoke-static {v2, v0, v3}, Lcom/android/settings/sdencryption/Util;->setSharedPreferencesString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;)V

    .line 438
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/sdencryption/Util;->cleanReceivedPoliciesFlags(Landroid/content/Context;)V

    .line 440
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->selfClose()V

    .line 441
    return-void
.end method

.method private prepareChangeSDEncryptionSettings()V
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lcom/android/settings/sdencryption/Util;->isSdCardMounted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->changeSDEncryptionSettingsDirectly()V

    .line 194
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-static {}, Lcom/android/settings/sdencryption/Util;->isSdCardMounted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sdencryption/Util;->hasAppsAccessingStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;I)V

    .line 190
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 192
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->changeSDEncryptionSettings()V

    goto :goto_0
.end method

.method private restoreMe(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    const-string v0, "AST_DIALOG_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I

    .line 86
    :cond_0
    return-void
.end method

.method private runOnCreate()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->initStateVerificator()V

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 78
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->restoreMe(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method private runOnResume()V
    .locals 3

    .prologue
    const/4 v1, 0x6

    const/4 v2, -0x1

    .line 107
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/Worker;->getIsInProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 109
    iget v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I

    if-ne v0, v1, :cond_0

    .line 110
    iput v2, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/sdencryption/Worker;->registerEncryptionListener(Lcom/android/settings/sdencryption/IEncryptionListener;Z)V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->initStateVerificator()V

    .line 117
    iget v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I

    if-ne v0, v2, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->checkEncryptionSyncStatus()V

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionState;->setIsLocked(Z)V

    .line 123
    return-void

    .line 120
    :cond_1
    iget v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method private selfClose()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionState;->setIsLocked(Z)V

    .line 477
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 478
    return-void
.end method


# virtual methods
.method doBindService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 512
    iput-boolean v2, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mIsBound:Z

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/sdencryption/EncryptionSettingsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 514
    return-void
.end method

.method doUnbindService()V
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mIsBound:Z

    .line 521
    :cond_0
    return-void
.end method

.method public enablePreferences(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 482
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 68
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    if-nez v0, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->doBindService()V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->runOnCreate()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const v7, 0x7f0b0111

    const v6, 0x7f0b00e2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 217
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 219
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 221
    packed-switch p1, :pswitch_data_0

    .line 382
    const-string v3, "EncryptionServerActivity"

    const-string v4, "Warning! Request for unsupported dialog ID from server."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    :goto_1
    return-object v1

    .line 226
    :pswitch_0
    iput v4, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I

    .line 227
    const v3, 0x7f0b00d5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "strMessage":Ljava/lang/String;
    const v3, 0x7f0b00e9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    const v3, 0x7f0b00eb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    const v3, 0x7f0b00d4

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 233
    const v3, 0x7f0b0114

    new-instance v4, Lcom/android/settings/sdencryption/EncryptionServerActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity$1;-><init>(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 246
    .end local v2    # "strMessage":Ljava/lang/String;
    :pswitch_1
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I

    .line 248
    const v3, 0x7f0b00d8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .restart local v2    # "strMessage":Ljava/lang/String;
    const v3, 0x7f0b00d9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    const v3, 0x7f0b00da

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    const v3, 0x7f0b00db

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    const v3, 0x7f0b00d7

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 255
    new-instance v3, Lcom/android/settings/sdencryption/EncryptionServerActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity$2;-><init>(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    invoke-virtual {v0, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 263
    const v3, 0x7f0b0112

    new-instance v4, Lcom/android/settings/sdencryption/EncryptionServerActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity$3;-><init>(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 276
    .end local v2    # "strMessage":Ljava/lang/String;
    :pswitch_2
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I

    .line 278
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070056

    new-instance v5, Lcom/android/settings/sdencryption/EncryptionServerActivity$4;

    invoke-direct {v5, p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity$4;-><init>(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->onCancelListenerPostponeSDCardEncryption:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 306
    :pswitch_3
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I

    .line 308
    const v3, 0x7f0b00e3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .restart local v2    # "strMessage":Ljava/lang/String;
    const v3, 0x7f0b00e4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 313
    new-instance v3, Lcom/android/settings/sdencryption/EncryptionServerActivity$5;

    invoke-direct {v3, p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity$5;-><init>(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    invoke-virtual {v0, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->onCancelListenerIndefPostponeSDCardEncryption:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 321
    const v3, 0x7f0b0117

    new-instance v4, Lcom/android/settings/sdencryption/EncryptionServerActivity$6;

    invoke-direct {v4, p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity$6;-><init>(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 334
    .end local v2    # "strMessage":Ljava/lang/String;
    :pswitch_4
    const v3, 0x7f0b00e0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    .restart local v2    # "strMessage":Ljava/lang/String;
    const v3, 0x7f0b00e1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    const v3, 0x7f0b00df

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 356
    const v3, 0x7f0b0116

    new-instance v4, Lcom/android/settings/sdencryption/EncryptionServerActivity$7;

    invoke-direct {v4, p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity$7;-><init>(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 370
    .end local v2    # "strMessage":Ljava/lang/String;
    :pswitch_5
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I

    .line 371
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 372
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    const v3, 0x7f0b00de

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 374
    .restart local v2    # "strMessage":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 376
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 377
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_1

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 465
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionState;->setIsLocked(Z)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/Worker;->unregisterEncryptionListener(Z)V

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->doUnbindService()V

    .line 471
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 472
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 138
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    if-eqz v0, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->runOnResume()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mIsBound:Z

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity;->doBindService()V

    goto :goto_0
.end method

.method public onSDEncrStatusChange()V
    .locals 1

    .prologue
    .line 485
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionServerActivity$10;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/EncryptionServerActivity$10;-><init>(Lcom/android/settings/sdencryption/EncryptionServerActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 494
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    const-string v0, "AST_DIALOG_ID"

    iget v1, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mLastDislogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionState;->setIsLocked(Z)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionServerActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/Worker;->unregisterEncryptionListener(Z)V

    .line 134
    :cond_1
    return-void
.end method
