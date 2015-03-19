.class public Lcom/android/settings/sdencryption/EncryptionBootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EncryptionBootCompleteReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleBootCompleteAction()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/settings/sdencryption/EncryptionStateVerificator;

    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionBootCompleteReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/sdencryption/EncryptionStateVerificator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionStateVerificator;->isSDEncSyncRequired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionBootCompleteReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/sdencryption/Util;->disableEncryptionBootCompleteReceiver(Landroid/content/Context;)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionBootCompleteReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/sdencryption/Util;->isSdcardEncryptionSyncRequired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "EncryptionBootCompleteReceiver"

    const-string v1, "OnBootComplete: Encription state not match policies . Resync is required"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionBootCompleteReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sdencryption/EncryptionBootCompleteReceiver;->mContext:Landroid/content/Context;

    .line 16
    if-nez p2, :cond_1

    .line 17
    const-string v1, "EncryptionBootCompleteReceiver"

    const-string v2, "Warning!!! BroadcastReceiver onReceive() getting null intent. Should not happened!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    const-string v1, "EncryptionBootCompleteReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    const-string v1, "EncryptionBootCompleteReceiver"

    const-string v2, "Function handleBootCompleteAction() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionBootCompleteReceiver;->handleBootCompleteAction()V

    goto :goto_0
.end method
