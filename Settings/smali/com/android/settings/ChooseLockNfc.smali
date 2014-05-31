.class public Lcom/android/settings/ChooseLockNfc;
.super Landroid/app/Activity;
.source "ChooseLockNfc.java"


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPasswordConfirmed:Z

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockNfc;->mPasswordConfirmed:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockNfc;->mWaitingForConfirmation:Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 84
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockNfc;->mWaitingForConfirmation:Z

    .line 86
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockNfc;->mPasswordConfirmed:Z

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockNfc;->setResult(I)V

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockNfc;->finish()V

    .line 96
    return-void

    .line 89
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/settings/ChooseLockNfc;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 91
    invoke-virtual {p0, p2}, Lcom/android/settings/ChooseLockNfc;->setResult(I)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockNfc;->setResult(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockNfc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/ChooseLockNfc;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 58
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockNfc;->mKeyStore:Landroid/security/KeyStore;

    .line 59
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockNfc;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 61
    if-eqz p1, :cond_0

    .line 62
    const-string v1, "password_confirmed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockNfc;->mPasswordConfirmed:Z

    .line 63
    const-string v1, "waiting_for_confirmation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockNfc;->mWaitingForConfirmation:Z

    .line 66
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockNfc;->mPasswordConfirmed:Z

    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockNfc;->setResult(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockNfc;->finish()V

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockNfc;->mWaitingForConfirmation:Z

    if-nez v1, :cond_1

    .line 71
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 72
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v1, 0x64

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 73
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockNfc;->mPasswordConfirmed:Z

    .line 74
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockNfc;->setResult(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockNfc;->finish()V

    goto :goto_0

    .line 77
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/ChooseLockNfc;->mWaitingForConfirmation:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method
