.class public Lcom/android/settings/VerifyCurrentLock;
.super Landroid/app/Activity;
.source "VerifyCurrentLock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 28
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 29
    const/16 v0, 0x82

    if-ne p1, v0, :cond_0

    if-ne p2, v2, :cond_0

    .line 30
    const-string v0, "VerifyCurrentLock"

    const-string v1, "onActivityResult RESULT_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0, v2}, Lcom/android/settings/VerifyCurrentLock;->setResult(I)V

    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/VerifyCurrentLock;->finish()V

    .line 37
    return-void

    .line 33
    :cond_0
    const-string v0, "VerifyCurrentLock"

    const-string v1, "onActivityResult RESULT_CANCELED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/VerifyCurrentLock;->setResult(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 19
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v1, 0x82

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    const-string v1, "VerifyCurrentLock"

    const-string v2, "onCreate RESULT_OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/VerifyCurrentLock;->setResult(I)V

    .line 22
    invoke-virtual {p0}, Lcom/android/settings/VerifyCurrentLock;->finish()V

    .line 24
    :cond_0
    return-void
.end method
