.class public Lcom/android/settings/sdencryption/EncryptionReceiverHandler;
.super Ljava/lang/Object;
.source "EncryptionReceiverHandler.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;


# direct methods
.method public constructor <init>(Lcom/android/settings/sdencryption/EncryptionState;)V
    .locals 1
    .param p1, "encryptionState"    # Lcom/android/settings/sdencryption/EncryptionState;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    .line 34
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionState;->getMyAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private handleEnforceEncryptionPolicyAction()V
    .locals 4

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->regesterReceiverForUserPresentAction()V

    .line 140
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ACTION"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {v2}, Lcom/android/settings/sdencryption/EncryptionState;->getWorker()Lcom/android/settings/sdencryption/Worker;

    move-result-object v1

    .line 135
    .local v1, "worker":Lcom/android/settings/sdencryption/Worker;
    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {v1, v0}, Lcom/android/settings/sdencryption/Worker;->onStartCommand(Landroid/os/Bundle;)V

    goto :goto_0

    .line 138
    :cond_1
    const-string v2, "EncryptionReceiverHandler"

    const-string v3, "Error! EncryptionApplication.getMe().getWorker() returns null! #3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSDCardPolicyChangedAction(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const/4 v2, 0x0

    .line 68
    .local v2, "iValue":I
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->regesterReceiverForUserPresentAction()V

    .line 104
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    const-string v6, "mot_device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/motepm/MotDevicePolicyManager;

    .line 76
    .local v3, "mMotDPM":Lcom/motorola/motepm/MotDevicePolicyManager;
    const-string v5, "com.android.settings.sdencryption.SDCARD_ENCRYPTION_REQUIRED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    iget-object v5, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/sdencryption/Util;->cleanPostponePreferences(Landroid/content/Context;)V

    .line 79
    const/4 v2, 0x1

    .line 93
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "encryption_value"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string v5, "ACTION"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    iget-object v5, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {v5}, Lcom/android/settings/sdencryption/EncryptionState;->getWorker()Lcom/android/settings/sdencryption/Worker;

    move-result-object v4

    .line 99
    .local v4, "worker":Lcom/android/settings/sdencryption/Worker;
    if-eqz v4, :cond_3

    .line 100
    invoke-virtual {v4, v1}, Lcom/android/settings/sdencryption/Worker;->onStartCommand(Landroid/os/Bundle;)V

    goto :goto_0

    .line 83
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "worker":Lcom/android/settings/sdencryption/Worker;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/motorola/motepm/MotDevicePolicyManager;->getExternalStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    const-string v5, "EncryptionReceiverHandler"

    const-string v6, "INFO! The ACTION_REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED has been received: SD Card encryption required. IGNORED!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_2
    iget-object v5, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/sdencryption/Util;->disableEncryptionBootCompleteReceiver(Landroid/content/Context;)V

    goto :goto_1

    .line 102
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "worker":Lcom/android/settings/sdencryption/Worker;
    :cond_3
    const-string v5, "EncryptionReceiverHandler"

    const-string v6, "Error! EncryptionApplication.getMe().getWorker() returns null! #1"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleTimeAlertAction()V
    .locals 4

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->regesterReceiverForUserPresentAction()V

    .line 122
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ACTION"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {v2}, Lcom/android/settings/sdencryption/EncryptionState;->getWorker()Lcom/android/settings/sdencryption/Worker;

    move-result-object v1

    .line 117
    .local v1, "worker":Lcom/android/settings/sdencryption/Worker;
    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {v1, v0}, Lcom/android/settings/sdencryption/Worker;->onStartCommand(Landroid/os/Bundle;)V

    goto :goto_0

    .line 120
    :cond_1
    const-string v2, "EncryptionReceiverHandler"

    const-string v3, "Error! EncryptionApplication.getMe().getWorker() returns null! #2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isScreenOn()Z
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 144
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method private regesterReceiverForUserPresentAction()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 148
    const-string v0, "EncryptionReceiverHandler"

    const-string v2, "Call regesterReceiverForUserPresentAction()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 152
    iget-object v4, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 153
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/settings/sdencryption/UserPresenceReceiver;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    invoke-virtual {v4, v5, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 158
    iget-object v4, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "request_policy_change_postponed_sdcard"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 161
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 163
    cmp-long v2, v4, v2

    if-gtz v2, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    const-string v2, "request_policy_change_postponed_sdcard"

    invoke-static {v1, v2}, Lcom/android/settings/sdencryption/Util;->cleanSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;)V

    .line 173
    const-string v0, "EncryptionReceiverHandler"

    const-string v1, "Subscribe for postponed time that has been set for SD Card"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 166
    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    const/16 v1, 0xe10

    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;I)V

    .line 176
    const-string v0, "EncryptionReceiverHandler"

    const-string v1, "Subscribe for one hour (in seconds) in case if there is no postpone has been set before"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    if-nez p1, :cond_1

    .line 40
    const-string v1, "EncryptionReceiverHandler"

    const-string v2, "Warning!!! BroadcastReceiver onReceive() getting null intent. Should not happened!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "action":Ljava/lang/String;
    const-string v1, "EncryptionReceiverHandler"

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

    .line 48
    const-string v1, "com.motorola.app.action.REQUIRE_STORAGE_CARD_ENCRYPTION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.settings.sdencryption.SDCARD_ENCRYPTION_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    :cond_2
    const-string v1, "EncryptionReceiverHandler"

    const-string v2, "Function handlePolicyChangedAction() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->handleSDCardPolicyChangedAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 53
    :cond_3
    const-string v1, "com.android.settings.sdencryption.TIMER_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    const-string v1, "EncryptionReceiverHandler"

    const-string v2, "Function handleTimeAlertAction() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->handleTimeAlertAction()V

    goto :goto_0

    .line 57
    :cond_4
    const-string v1, "com.android.settings.sdencryption.ENFORCE_ENCRYPTION_POLICY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "EncryptionReceiverHandler"

    const-string v2, "Function handleEnforceEncryptionPolicyAction() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->handleEnforceEncryptionPolicyAction()V

    goto :goto_0
.end method
