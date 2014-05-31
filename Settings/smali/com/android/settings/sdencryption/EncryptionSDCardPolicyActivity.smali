.class public Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity;
.super Landroid/app/Activity;
.source "EncryptionSDCardPolicyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 28
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    :cond_0
    const-string v2, "EncryptionSDCardPolicyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent with action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity;->finish()V

    .line 39
    return-void
.end method
