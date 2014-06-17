.class public Lcom/android/mms/ui/MmsTestConfigActivity;
.super Landroid/app/Activity;
.source "MmsTestConfigActivity.java"


# instance fields
.field private mGetIntent:Z

.field private mSetIntent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/android/mms/ui/MmsTestConfigActivity;->mGetIntent:Z

    .line 28
    iput-boolean v0, p0, Lcom/android/mms/ui/MmsTestConfigActivity;->mSetIntent:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTestConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.android.mms.GET_MMS_TEST_CONFIG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsTestConfigActivity;->mGetIntent:Z

    .line 38
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "com.android.mms.SET_MMS_TEST_CONFIG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iput-boolean v2, p0, Lcom/android/mms/ui/MmsTestConfigActivity;->mSetIntent:Z

    .line 41
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 46
    iget-boolean v4, p0, Lcom/android/mms/ui/MmsTestConfigActivity;->mGetIntent:Z

    if-eqz v4, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v4, "userAgent"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v4, "uaProfUrl"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v4, "smsToMmsTextThreshold"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v4, "maxMessageSize"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v4, "emailGatewayNumber"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v4, "com.android.mms.action.MMS_TEST_CONFIG_VAL"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Lcom/android/mms/ui/MmsTestConfigActivity;->setResult(ILandroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTestConfigActivity;->finish()V

    .line 63
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    iget-boolean v4, p0, Lcom/android/mms/ui/MmsTestConfigActivity;->mSetIntent:Z

    if-eqz v4, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTestConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "tag"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTestConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTestConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "text":Ljava/lang/String;
    invoke-static {v1, v3, v2}, Lcom/android/mms/MmsConfig;->setMmsTestSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTestConfigActivity;->finish()V

    .line 70
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method
