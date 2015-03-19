.class Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity$1;
.super Ljava/lang/Object;
.source "EncryptionSDCardPolicyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity;->enableEncryptionReceiverAndSendIntent(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity$1;->this$0:Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity;

    iput-object p2, p0, Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 46
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity$1;->this$0:Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 47
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity$1;->val$context:Landroid/content/Context;

    const-class v3, Lcom/android/settings/sdencryption/EncryptionBootCompleteReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity$1;->this$0:Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity;

    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity;->isWizardRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "EncryptionSDCardPolicyActivity"

    const-string v1, "SetupWizard is running. Ignore encryption request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionSDCardPolicyActivity$1;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.sdencryption.SDCARD_ENCRYPTION_REQUIRED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
