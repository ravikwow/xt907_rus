.class Lcom/android/settings/sdencryption/EncryptionPinActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "EncryptionPinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sdencryption/EncryptionPinActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/sdencryption/EncryptionPinActivity;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$1;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionPinActivity$1;->this$0:Lcom/android/settings/sdencryption/EncryptionPinActivity;

    # invokes: Lcom/android/settings/sdencryption/EncryptionPinActivity;->processIntent(Landroid/content/Intent;)Z
    invoke-static {v0, p2}, Lcom/android/settings/sdencryption/EncryptionPinActivity;->access$000(Lcom/android/settings/sdencryption/EncryptionPinActivity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "com.motorola.android.encryption.settings.START_PIN_ACTIVITY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "EncryptionPinActivity"

    const-string v1, "Aborting ACTION_START_PIN_ACTIVITY dyn. receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/sdencryption/EncryptionPinActivity$1;->abortBroadcast()V

    .line 161
    :cond_0
    return-void
.end method
