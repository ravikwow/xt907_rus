.class public Lcom/android/settings/sdencryption/EncryptionUserActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EncryptionUserActivity.java"

# interfaces
.implements Lcom/android/settings/sdencryption/IEncryptionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sdencryption/EncryptionUserActivity$MyListView;
    }
.end annotation


# static fields
.field private static SELECTED_ENCR_KEY_TYPE_ID:I


# instance fields
.field private mButtonApply:Landroid/widget/Button;

.field private mButtonReset:Landroid/widget/Button;

.field private mCMCryptoVersionPreference:Landroid/preference/PreferenceScreen;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

.field private mEncryptionService:Lcom/android/settings/sdencryption/EncryptionSettingsService;

.field private mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

.field private mEsv:Lcom/android/settings/sdencryption/EncryptionStateVerificator;

.field private mIsBound:Z

.field private mMemCardEncKeyTypePreference:Landroid/preference/PreferenceScreen;

.field private mMemCardEncPreference:Landroid/preference/CheckBoxPreference;

.field private mMenuItemApply:Landroid/view/MenuItem;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mUserAllowChangeSDEncSettings:Z

.field private mWorker:Lcom/android/settings/sdencryption/Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->SELECTED_ENCR_KEY_TYPE_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncPreference:Landroid/preference/CheckBoxPreference;

    .line 75
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncKeyTypePreference:Landroid/preference/PreferenceScreen;

    .line 76
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mCMCryptoVersionPreference:Landroid/preference/PreferenceScreen;

    .line 78
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEsv:Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    .line 79
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    .line 80
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMenuItemApply:Landroid/view/MenuItem;

    .line 82
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mButtonApply:Landroid/widget/Button;

    .line 83
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mButtonReset:Landroid/widget/Button;

    .line 85
    iput-boolean v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mUserAllowChangeSDEncSettings:Z

    .line 95
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    .line 97
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionService:Lcom/android/settings/sdencryption/EncryptionSettingsService;

    .line 98
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    .line 99
    iput-boolean v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mIsBound:Z

    .line 100
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 101
    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 582
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionUserActivity$9;

    invoke-direct {v0, p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity$9;-><init>(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sdencryption/EncryptionUserActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mUserAllowChangeSDEncSettings:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/sdencryption/EncryptionUserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/sdencryption/EncryptionUserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->performOnBtnApplyActions()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->initCurrentServerPoliciesAndUserPermissions()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->setPreferencesCheckAndSummary()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->resetUserSelection()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->disableButtons()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/sdencryption/EncryptionUserActivity;)Lcom/android/settings/sdencryption/EncryptionSettingsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionService:Lcom/android/settings/sdencryption/EncryptionSettingsService;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/sdencryption/EncryptionUserActivity;Lcom/android/settings/sdencryption/EncryptionSettingsService;)Lcom/android/settings/sdencryption/EncryptionSettingsService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;
    .param p1, "x1"    # Lcom/android/settings/sdencryption/EncryptionSettingsService;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionService:Lcom/android/settings/sdencryption/EncryptionSettingsService;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/settings/sdencryption/EncryptionUserActivity;)Lcom/android/settings/sdencryption/EncryptionState;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/settings/sdencryption/EncryptionUserActivity;Lcom/android/settings/sdencryption/EncryptionState;)Lcom/android/settings/sdencryption/EncryptionState;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;
    .param p1, "x1"    # Lcom/android/settings/sdencryption/EncryptionState;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/settings/sdencryption/EncryptionUserActivity;Lcom/android/settings/sdencryption/Worker;)Lcom/android/settings/sdencryption/Worker;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;
    .param p1, "x1"    # Lcom/android/settings/sdencryption/Worker;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->cancelChanges()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->runOnCreate()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->runOnResume()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/sdencryption/EncryptionUserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->changeSDEncryptionSettings()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/sdencryption/EncryptionUserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/sdencryption/EncryptionUserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/sdencryption/EncryptionUserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/sdencryption/EncryptionUserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sdencryption/EncryptionUserActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->selfClose()V

    return-void
.end method

.method private cancelChanges()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionState;->setIsLocked(Z)V

    .line 515
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->enablePreferences(Z)V

    .line 516
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->setPreferencesCheckAndSummary()V

    .line 517
    return-void
.end method

.method private changeSDEncryptionSettings()V
    .locals 3

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sdencryption/Util;->cleanPostponePreferences(Landroid/content/Context;)V

    .line 408
    invoke-static {}, Lcom/android/settings/sdencryption/Util;->isSdCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->showProgressDialog()V

    .line 410
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/sdencryption/Worker;->changeSDEncryptionSettings(Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;Z)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->changeSDEncryptionSettingsDirectly()V

    goto :goto_0
.end method

.method private changeSDEncryptionSettingsDirectly()V
    .locals 3

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEsv:Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    invoke-virtual {v1}, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->isSDEncSyncRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.android.encryption.settings.SDCARD_ENCRYPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 558
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    invoke-virtual {v1}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->writePersistMemorySystemProperties()V

    .line 561
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/sdencryption/EncryptionState;->setIsLocked(Z)V

    .line 562
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->onSDEncrStatusChange()V

    .line 563
    return-void
.end method

.method private checkEncryptionSyncStatus()V
    .locals 2

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/sdencryption/Util;->isSdcardEncryptionSyncRequired(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.sdencryption.ENFORCE_ENCRYPTION_POLICY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 525
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->selfClose()V

    .line 527
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 244
    .local v1, "screen":Landroid/preference/PreferenceScreen;
    const v3, 0x7f0b00fd

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 247
    new-instance v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncPreference:Landroid/preference/CheckBoxPreference;

    .line 248
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 249
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncPreference:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0b00ff

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 250
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncPreference:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0b0100

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 251
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncPreference:Landroid/preference/CheckBoxPreference;

    const-string v4, "sd_pref"

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mUserAllowChangeSDEncSettings:Z

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 253
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncKeyTypePreference:Landroid/preference/PreferenceScreen;

    .line 257
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncKeyTypePreference:Landroid/preference/PreferenceScreen;

    const-string v4, "sd_enc_type_pref"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncKeyTypePreference:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0b0101

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 259
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncKeyTypePreference:Landroid/preference/PreferenceScreen;

    iget-boolean v4, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mUserAllowChangeSDEncSettings:Z

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.motorola.android.encryption.settings"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 263
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncKeyTypePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    invoke-static {}, Lcom/android/settings/sdencryption/Util;->getCMVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 273
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 274
    .local v0, "cryptoCat":Landroid/preference/PreferenceCategory;
    const v3, 0x7f0b0138

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 275
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mCMCryptoVersionPreference:Landroid/preference/PreferenceScreen;

    .line 278
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mCMCryptoVersionPreference:Landroid/preference/PreferenceScreen;

    const-string v4, "crypto_version"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mCMCryptoVersionPreference:Landroid/preference/PreferenceScreen;

    const v4, 0x7f0b0139

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 280
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mCMCryptoVersionPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mCMCryptoVersionPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setSelectable(Z)V

    .line 282
    iget-object v3, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mCMCryptoVersionPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 285
    .end local v0    # "cryptoCat":Landroid/preference/PreferenceCategory;
    :cond_0
    return-object v1

    .line 264
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private createUIView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 215
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionUserActivity$MyListView;

    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/settings/sdencryption/EncryptionUserActivity$MyListView;-><init>(Lcom/android/settings/sdencryption/EncryptionUserActivity;Landroid/content/Context;)V

    .line 216
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setId(I)V

    .line 219
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 220
    .local v1, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 221
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 223
    invoke-virtual {p0, v1}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 224
    return-void
.end method

.method private disableButtons()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMenuItemApply:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 382
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 635
    :cond_0
    return-void
.end method

.method private enableButtons()V
    .locals 2

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMenuItemApply:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    invoke-virtual {v1}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->isMemorySettingsChanged()Z

    move-result v0

    .line 376
    .local v0, "isChanged":Z
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMenuItemApply:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 378
    .end local v0    # "isChanged":Z
    :cond_0
    return-void
.end method

.method private getEncryptionKeyType(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 302
    packed-switch p1, :pswitch_data_0

    .line 310
    const v0, 0x7f0b00f3

    :goto_0
    return v0

    .line 304
    :pswitch_0
    const v0, 0x7f0b00c8

    goto :goto_0

    .line 306
    :pswitch_1
    const v0, 0x7f0b00ca

    goto :goto_0

    .line 308
    :pswitch_2
    const v0, 0x7f0b00cc

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initCurrentServerPoliciesAndUserPermissions()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 390
    iget-object v4, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEsv:Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    if-nez v4, :cond_1

    .line 391
    new-instance v4, Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/sdencryption/EncryptionStateVerificator;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEsv:Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    .line 396
    :goto_0
    iget-object v4, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {v4}, Lcom/android/settings/sdencryption/EncryptionState;->getIsLocked()Z

    move-result v1

    .line 399
    .local v1, "inProcess":Z
    iget-object v4, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEsv:Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    iget v4, v4, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPolicy:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEsv:Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    iget v4, v4, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPersistValue:I

    iget-object v5, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEsv:Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    iget v5, v5, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->mSDEncPolicy:I

    if-ge v4, v5, :cond_2

    :cond_0
    move v0, v2

    .line 400
    .local v0, "allow":Z
    :goto_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mUserAllowChangeSDEncSettings:Z

    .line 401
    return-void

    .line 393
    .end local v0    # "allow":Z
    .end local v1    # "inProcess":Z
    :cond_1
    iget-object v4, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEsv:Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    invoke-virtual {v4}, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->load()V

    goto :goto_0

    .restart local v1    # "inProcess":Z
    :cond_2
    move v0, v3

    .line 399
    goto :goto_1

    .restart local v0    # "allow":Z
    :cond_3
    move v2, v3

    .line 400
    goto :goto_2
.end method

.method private performOnBtnApplyActions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionState;->setIsLocked(Z)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->isMemorySettingsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0, v2}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->enablePreferences(Z)V

    .line 331
    invoke-virtual {p0, v2}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->showDialog(I)V

    .line 333
    :cond_0
    return-void
.end method

.method private resetUserSelection()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->resetUserSelection()V

    .line 386
    return-void
.end method

.method private restoreMe(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    const-string v0, "ESPH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    invoke-direct {v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    .line 150
    :cond_1
    return-void
.end method

.method private runOnCreate()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->initCurrentServerPoliciesAndUserPermissions()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->createUIView()V

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->setHasOptionsMenu(Z)V

    .line 141
    return-void
.end method

.method private runOnResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 181
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/Worker;->getIsInProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->showProgressDialog()V

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->checkEncryptionSyncStatus()V

    .line 186
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    invoke-virtual {v0, p0, v3}, Lcom/android/settings/sdencryption/Worker;->registerEncryptionListener(Lcom/android/settings/sdencryption/IEncryptionListener;Z)V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->initCurrentServerPoliciesAndUserPermissions()V

    .line 190
    sget v0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->SELECTED_ENCR_KEY_TYPE_ID:I

    if-ltz v0, :cond_1

    sget v0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->SELECTED_ENCR_KEY_TYPE_ID:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    const-string v1, "mem_encr_key_type"

    sget v2, Lcom/android/settings/sdencryption/EncryptionUserActivity;->SELECTED_ENCR_KEY_TYPE_ID:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->setValue(Ljava/lang/String;I)V

    .line 192
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->SELECTED_ENCR_KEY_TYPE_ID:I

    .line 193
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->enableButtons()V

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->setPreferencesCheckAndSummary()V

    .line 197
    invoke-virtual {p0, v3}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->enablePreferences(Z)V

    .line 198
    return-void
.end method

.method private selfClose()V
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Settings;

    invoke-virtual {v0, p0}, Lcom/android/settings/Settings;->unregisterOnBackPressedEvent(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->finish()V

    .line 568
    return-void
.end method

.method private setPreferencesCheckAndSummary()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 292
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    const-string v3, "memory_encr"

    invoke-virtual {v2, v3}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->getValue(Ljava/lang/String;)I

    move-result v0

    .line 293
    .local v0, "ival":I
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncPreference:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 295
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    const-string v2, "mem_encr_key_type"

    invoke-virtual {v1, v2}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->getValue(Ljava/lang/String;)I

    move-result v0

    .line 296
    invoke-direct {p0, v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getEncryptionKeyType(I)I

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncKeyTypePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 298
    return-void

    .line 293
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setSelEncrKeyTypeId(I)V
    .locals 0
    .param p0, "id"    # I

    .prologue
    .line 638
    sput p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->SELECTED_ENCR_KEY_TYPE_ID:I

    .line 639
    return-void
.end method

.method private showProgressDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 611
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 612
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->dismissProgressDialog()V

    .line 615
    :cond_0
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    invoke-virtual {v2}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->getMemoryEncryptionVal()I

    move-result v2

    if-ne v2, v4, :cond_2

    const v0, 0x7f0b011f

    .line 619
    .local v0, "message":I
    :goto_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 620
    invoke-virtual {p0, v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 622
    .local v1, "msg":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 623
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 624
    :cond_1
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 625
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 626
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 627
    return-void

    .line 615
    .end local v0    # "message":I
    .end local v1    # "msg":Ljava/lang/CharSequence;
    :cond_2
    const v0, 0x7f0b0120

    goto :goto_0
.end method

.method private startActivityChooser()V
    .locals 6

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    const-string v1, "mem_encr_key_type"

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->getValue(Ljava/lang/String;)I

    move-result v0

    .line 366
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 367
    const-string v1, "SELECTED_ROW"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    const-class v0, Lcom/android/settings/sdencryption/ChooserEncryptionMemKeyTypeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const v5, 0x7f0b0101

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 370
    return-void
.end method


# virtual methods
.method doBindService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 598
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/sdencryption/EncryptionSettingsService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 599
    iput-boolean v4, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mIsBound:Z

    .line 600
    return-void
.end method

.method doUnbindService()V
    .locals 2

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 605
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mIsBound:Z

    .line 607
    :cond_0
    return-void
.end method

.method public enablePreferences(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 572
    if-nez p1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 574
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncKeyTypePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 580
    :goto_0
    return-void

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->initCurrentServerPoliciesAndUserPermissions()V

    .line 577
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mUserAllowChangeSDEncSettings:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 578
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncKeyTypePreference:Landroid/preference/PreferenceScreen;

    iget-boolean v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mUserAllowChangeSDEncSettings:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->isMemorySettingsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->showDialog(I)V

    .line 162
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 127
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->restoreMe(Landroid/os/Bundle;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->doBindService()V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->runOnCreate()V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    const v8, 0x7f0b0141

    const v7, 0x7f0b011a

    const v6, 0x7f0b0119

    .line 422
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 506
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 507
    .local v1, "dialog":Landroid/app/Dialog;
    const-string v4, "EncryptionUserActivity"

    const-string v5, "Warning! Request for unsupported dialog ID."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_0
    return-object v1

    .line 429
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    invoke-virtual {v4}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->getMemoryEncryptionVal()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 430
    const v3, 0x7f0b0114

    .line 431
    .local v3, "title":I
    const v4, 0x7f0b0116

    invoke-virtual {p0, v4}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "strMessage":Ljava/lang/String;
    const v4, 0x7f0b0118

    invoke-virtual {p0, v4}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-virtual {p0, v6}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 434
    invoke-virtual {p0, v7}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 445
    new-instance v4, Lcom/android/settings/sdencryption/EncryptionUserActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity$2;-><init>(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    invoke-virtual {v0, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0140

    new-instance v6, Lcom/android/settings/sdencryption/EncryptionUserActivity$1;

    invoke-direct {v6, p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity$1;-><init>(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 456
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 457
    .restart local v1    # "dialog":Landroid/app/Dialog;
    new-instance v4, Lcom/android/settings/sdencryption/EncryptionUserActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity$3;-><init>(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 436
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "strMessage":Ljava/lang/String;
    .end local v3    # "title":I
    :cond_0
    const v3, 0x7f0b0115

    .line 437
    .restart local v3    # "title":I
    const v4, 0x7f0b0117

    invoke-virtual {p0, v4}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    .restart local v2    # "strMessage":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-virtual {p0, v7}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 470
    .end local v2    # "strMessage":Ljava/lang/String;
    .end local v3    # "title":I
    :pswitch_1
    const v4, 0x7f0b0112

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0113

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/sdencryption/EncryptionUserActivity$4;

    invoke-direct {v5, p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity$4;-><init>(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 478
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 479
    .restart local v1    # "dialog":Landroid/app/Dialog;
    new-instance v4, Lcom/android/settings/sdencryption/EncryptionUserActivity$5;

    invoke-direct {v4, p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity$5;-><init>(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 490
    .end local v1    # "dialog":Landroid/app/Dialog;
    :pswitch_2
    const v4, 0x7f0b013b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b013c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0145

    new-instance v6, Lcom/android/settings/sdencryption/EncryptionUserActivity$7;

    invoke-direct {v6, p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity$7;-><init>(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0146

    new-instance v6, Lcom/android/settings/sdencryption/EncryptionUserActivity$6;

    invoke-direct {v6, p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity$6;-><init>(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 502
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 503
    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto/16 :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v1, 0x7f08026b

    .line 228
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMenuItemApply:Landroid/view/MenuItem;

    .line 229
    const v0, 0x7f100004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 230
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMenuItemApply:Landroid/view/MenuItem;

    .line 232
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMenuItemApply:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 233
    const-string v0, "EncryptionUserActivity"

    const-string v1, "ERROR!!!! Cannot find Menu Item : menu_item_apply_id."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->selfClose()V

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->enableButtons()V

    .line 238
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionState;->setIsLocked(Z)V

    .line 531
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/Worker;->unregisterEncryptionListener(Z)V

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->doUnbindService()V

    .line 533
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 534
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 317
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 322
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 319
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->performOnBtnApplyActions()V

    .line 320
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x7f08026b
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Settings;

    invoke-virtual {v0, p0}, Lcom/android/settings/Settings;->unregisterOnBackPressedEvent(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 203
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 204
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 344
    instance-of v2, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    move-object v2, p2

    .line 346
    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 347
    .local v0, "isChecked":Z
    if-eqz v0, :cond_2

    move v1, v3

    .line 349
    .local v1, "value":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    const-string v5, "memory_encr"

    invoke-virtual {v2, v5, v1}, Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;->setValue(Ljava/lang/String;I)V

    .line 351
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mMemCardEncKeyTypePreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    iget-boolean v5, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mUserAllowChangeSDEncSettings:Z

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->setPreferencesCheckAndSummary()V

    .line 355
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->enableButtons()V

    .line 361
    .end local v0    # "isChecked":Z
    .end local v1    # "value":I
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .restart local v0    # "isChecked":Z
    :cond_2
    move v1, v4

    .line 347
    goto :goto_0

    .restart local v1    # "value":I
    :cond_3
    move v3, v4

    .line 351
    goto :goto_1

    .line 357
    .end local v0    # "isChecked":Z
    .end local v1    # "value":I
    :cond_4
    instance-of v2, p2, Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->startActivityChooser()V

    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 172
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->runOnResume()V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Settings;

    invoke-virtual {v0, p0}, Lcom/android/settings/Settings;->registerOnBackPressedEvent(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 177
    return-void
.end method

.method public onSDEncrStatusChange()V
    .locals 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/sdencryption/EncryptionUserActivity$8;

    invoke-direct {v1, p0}, Lcom/android/settings/sdencryption/EncryptionUserActivity$8;-><init>(Lcom/android/settings/sdencryption/EncryptionUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 547
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    const-string v0, "ESPH"

    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mESPH:Lcom/android/settings/sdencryption/EncryptionSystemPropertiesHelper;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionState;->setIsLocked(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionUserActivity;->mWorker:Lcom/android/settings/sdencryption/Worker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/Worker;->unregisterEncryptionListener(Z)V

    .line 211
    return-void
.end method
