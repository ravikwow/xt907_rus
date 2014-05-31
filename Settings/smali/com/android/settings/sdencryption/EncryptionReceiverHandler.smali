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
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    .line 33
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {v0}, Lcom/android/settings/sdencryption/EncryptionState;->getMyAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private handleEnforceEncryptionPolicyAction()V
    .locals 4

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->regesterReceiverForUserPresentAction()V

    .line 142
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ACTION"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {v2}, Lcom/android/settings/sdencryption/EncryptionState;->getWorker()Lcom/android/settings/sdencryption/Worker;

    move-result-object v1

    .line 137
    .local v1, "worker":Lcom/android/settings/sdencryption/Worker;
    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v1, v0}, Lcom/android/settings/sdencryption/Worker;->onStartCommand(Landroid/os/Bundle;)V

    goto :goto_0

    .line 140
    :cond_1
    const-string v2, "EncryptionReceiverHandler"

    const-string v3, "Error! EncryptionApplication.getMe().getWorker() returns null! #3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleTimeAlertAction()V
    .locals 4

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->regesterReceiverForUserPresentAction()V

    .line 124
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ACTION"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    iget-object v2, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mEncryptionState:Lcom/android/settings/sdencryption/EncryptionState;

    invoke-virtual {v2}, Lcom/android/settings/sdencryption/EncryptionState;->getWorker()Lcom/android/settings/sdencryption/Worker;

    move-result-object v1

    .line 119
    .local v1, "worker":Lcom/android/settings/sdencryption/Worker;
    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {v1, v0}, Lcom/android/settings/sdencryption/Worker;->onStartCommand(Landroid/os/Bundle;)V

    goto :goto_0

    .line 122
    :cond_1
    const-string v2, "EncryptionReceiverHandler"

    const-string v3, "Error! EncryptionApplication.getMe().getWorker() returns null! #2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isScreenOn()Z
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 146
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method private regesterReceiverForUserPresentAction()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 150
    const-string v0, "EncryptionReceiverHandler"

    const-string v2, "Call regesterReceiverForUserPresentAction()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x0

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 154
    iget-object v4, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 155
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/settings/sdencryption/UserPresenceReceiver;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    invoke-virtual {v4, v5, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 160
    iget-object v4, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "request_policy_change_postponed_sdcard"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 163
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 165
    cmp-long v2, v4, v2

    if-gtz v2, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    const-string v2, "request_policy_change_postponed_sdcard"

    invoke-static {v1, v2}, Lcom/android/settings/sdencryption/Util;->cleanSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;)V

    .line 175
    const-string v0, "EncryptionReceiverHandler"

    const-string v1, "Subscribe for postponed time that has been set for SD Card"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 168
    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->mContext:Landroid/content/Context;

    const/16 v1, 0xe10

    invoke-static {v0, v1}, Lcom/android/settings/sdencryption/Util;->subscribeForTimeAlert(Landroid/content/Context;I)V

    .line 178
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
    .line 38
    if-nez p1, :cond_1

    .line 39
    const-string v1, "EncryptionReceiverHandler"

    const-string v2, "Warning!!! BroadcastReceiver onReceive() getting null intent. Should not happened!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
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

    .line 54
    const-string v1, "com.android.settings.sdencryption.TIMER_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    const-string v1, "EncryptionReceiverHandler"

    const-string v2, "Function handleTimeAlertAction() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->handleTimeAlertAction()V

    goto :goto_0

    .line 58
    :cond_2
    const-string v1, "com.android.settings.sdencryption.ENFORCE_ENCRYPTION_POLICY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "EncryptionReceiverHandler"

    const-string v2, "Function handleEnforceEncryptionPolicyAction() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0}, Lcom/android/settings/sdencryption/EncryptionReceiverHandler;->handleEnforceEncryptionPolicyAction()V

    goto :goto_0
.end method
