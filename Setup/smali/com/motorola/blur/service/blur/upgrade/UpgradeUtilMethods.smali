.class public Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilMethods;
.super Ljava/lang/Object;
.source "UpgradeUtilMethods.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cancelDownloadNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATER_DOWNLOAD_NOTIFICATION_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method public static final cancelInstallNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATER_INSTALL_NOTIFICATION_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method public static final cancelUpdateNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATER_UPDATE_NOTIFICATION_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public static final deferredFromIntent(Landroid/content/Intent;)I
    .locals 3
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.motorola.blur.service.blur.Actions.UPGRADE_DOWNLOAD_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    :goto_0
    return v0

    :cond_0
    const-string v1, "com.motorola.blur.service.blur.upgrade.download.deferred"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static final downloadOnWifiFromIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.motorola.blur.service.blur.Actions.UPGRADE_DOWNLOAD_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    :goto_0
    return v0

    :cond_0
    const-string v1, "com.motorola.blur.service.blur.upgrade.download.on_wifi"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static final downloadOptCheckFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.motorola.blur.service.blur.upgrade.download_opt_check"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final downloadStatusFromIntent(Landroid/content/Intent;)Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_DOWNLOAD_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.motorola.blur.service.blur.upgrade.download_status"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public static final errorFromIntent(Landroid/content/Intent;)Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.motorola.blur.service.blur.upgrade.check_error"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;->valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getRequestId(Landroid/content/Intent;)I
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 69
    const-string v0, "com.motorola.blur.service.blur.upgrade.requestid"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final isBootstrap(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 65
    const-string v0, "com.motorola.blur.service.blur.upgrade.bootstrap"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final isInteractive(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 73
    const-string v0, "com.motorola.blur.service.blur.upgrade.interactive"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final locationFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_DOWNLOAD_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_EXECUTE_UPGRADE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    const-string v0, "com.motorola.blur.service.blur.upgrade.file_location"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final locationTypeFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_DOWNLOAD_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    const-string v0, "com.motorola.blur.service.blur.upgrade.location_type"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final metadataFromIntent(Landroid/content/Intent;)[B
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_EXECUTE_UPGRADE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_DOWNLOAD_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    const-string v0, "com.motorola.blur.service.blur.upgrade.metadata"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final proceedFromIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.motorola.blur.service.blur.Actions.UPGRADE_LAUNCH_UPGRADE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    :goto_0
    return v0

    :cond_0
    const-string v1, "com.motorola.blur.service.blur.upgrade.upgrade_launch_proceed"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static final receivedBytesFromIntent(Landroid/content/Intent;)I
    .locals 3
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 275
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.motorola.blur.service.blur.Actions.UPGRADE_DOWNLOAD_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    :goto_0
    return v0

    :cond_0
    const-string v1, "com.motorola.blur.service.blur.upgrade.bytes_received"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static final registerService(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 397
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 398
    .local v0, "fi":Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_NOTIFICATION_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_LAUNCH_UPGRADE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    invoke-static {p0, p1, v0}, Lcom/motorola/blur/service/blur/BSUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 403
    return-void
.end method

.method public static final registerStatusApp(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 366
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 367
    .local v0, "fi":Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_EXECUTE_UPGRADE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    invoke-static {p0, p1, v0}, Lcom/motorola/blur/service/blur/BSUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 370
    return-void
.end method

.method public static final registerUpgrader(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 336
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 337
    .local v0, "fi":Landroid/content/IntentFilter;
    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_DOWNLOAD_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    invoke-static {p0, p1, v0}, Lcom/motorola/blur/service/blur/BSUtils;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 340
    return-void
.end method

.method public static final responseActionFromIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_NOTIFICATION_RESPONSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    :goto_0
    return v0

    :cond_0
    const-string v1, "com.motorola.blur.service.blur.upgrade.response_action"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static final responseFlavourFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_NOTIFICATION_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.motorola.blur.service.blur.upgrade.response_flavour"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final resultFlavourFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.motorola.blur.service.blur.upgrade.result_flavour"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final sendCheckForUpdate(Landroid/content/Context;ZI)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "bootstrap"    # Z
    .param p2, "id"    # I

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.upgrade.bootstrap"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    const-string v1, "com.motorola.blur.service.blur.upgrade.requestid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string v1, "com.motorola.blur.service.blur.upgrade.interactive"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public static final sendCheckForUpdate(Landroid/content/Context;ZIZ)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "bootstrap"    # Z
    .param p2, "id"    # I
    .param p3, "interactive"    # Z

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.upgrade.bootstrap"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    const-string v1, "com.motorola.blur.service.blur.upgrade.requestid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v1, "com.motorola.blur.service.blur.upgrade.interactive"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public static final sendCheckForUpdateResponse(Landroid/content/Context;Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;IZ)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "e"    # Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$Error;
    .param p2, "id"    # I
    .param p3, "bootstrap"    # Z

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.upgrade.check_error"

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "com.motorola.blur.service.blur.upgrade.requestid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v1, "com.motorola.blur.service.blur.upgrade.bootstrap"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method public static final sendUpdateDownloadStatus(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;IILjava/lang/String;[BLjava/lang/String;IZ)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;
    .param p3, "received"    # I
    .param p4, "total"    # I
    .param p5, "location"    # Ljava/lang/String;
    .param p6, "metadata"    # [B
    .param p7, "locationType"    # Ljava/lang/String;
    .param p8, "deferredOrSuspended"    # I
    .param p9, "wifionly"    # Z

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_DOWNLOAD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.upgrade.version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "com.motorola.blur.service.blur.upgrade.download_status"

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "com.motorola.blur.service.blur.upgrade.bytes_received"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v1, "com.motorola.blur.service.blur.upgrade.bytes_total"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string v1, "com.motorola.blur.service.blur.upgrade.file_location"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "com.motorola.blur.service.blur.upgrade.metadata"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 214
    const-string v1, "com.motorola.blur.service.blur.upgrade.location_type"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v1, "com.motorola.blur.service.blur.upgrade.download.deferred"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string v1, "com.motorola.blur.service.blur.upgrade.download.on_wifi"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method public static final sendUpdateDownloadStatusDeferred(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "wifionly"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 243
    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_TEMP_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move-object v6, v5

    move-object v7, v5

    move v9, p2

    invoke-static/range {v0 .. v9}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilMethods;->sendUpdateDownloadStatus(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;IILjava/lang/String;[BLjava/lang/String;IZ)V

    .line 245
    return-void
.end method

.method public static final sendUpdateDownloadStatusError(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;)V
    .locals 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 228
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v6, v5

    move-object v7, v5

    move v8, v3

    move v9, v3

    invoke-static/range {v0 .. v9}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilMethods;->sendUpdateDownloadStatus(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;IILjava/lang/String;[BLjava/lang/String;IZ)V

    .line 229
    return-void
.end method

.method public static final sendUpdateDownloadStatusError(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;[B)V
    .locals 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;
    .param p3, "metadata"    # [B

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 233
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v6, p3

    move-object v7, v5

    move v8, v3

    move v9, v3

    invoke-static/range {v0 .. v9}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilMethods;->sendUpdateDownloadStatus(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;IILjava/lang/String;[BLjava/lang/String;IZ)V

    .line 234
    return-void
.end method

.method public static final sendUpdateDownloadStatusProgress(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "recevied"    # I
    .param p3, "total"    # I
    .param p4, "locationType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 222
    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_TEMP_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v6, v5

    move-object v7, p4

    move v9, v8

    invoke-static/range {v0 .. v9}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilMethods;->sendUpdateDownloadStatus(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;IILjava/lang/String;[BLjava/lang/String;IZ)V

    .line 224
    return-void
.end method

.method public static final sendUpdateDownloadStatusSuccess(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)V
    .locals 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "location"    # Ljava/lang/String;
    .param p4, "metadata"    # [B
    .param p5, "locationType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 238
    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v9, v8

    invoke-static/range {v0 .. v9}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilMethods;->sendUpdateDownloadStatus(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;IILjava/lang/String;[BLjava/lang/String;IZ)V

    .line 240
    return-void
.end method

.method public static final sendUpdateDownloadStatusSuspended(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "recevied"    # I
    .param p3, "total"    # I
    .param p4, "locationType"    # Ljava/lang/String;
    .param p5, "wifionly"    # Z

    .prologue
    const/4 v5, 0x0

    .line 249
    sget-object v2, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;->STATUS_TEMP_OK:Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v6, v5

    move-object v7, p4

    move v9, p5

    invoke-static/range {v0 .. v9}, Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilMethods;->sendUpdateDownloadStatus(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/blur/service/blur/upgrade/UpgradeUtilConstants$DownloadStatus;IILjava/lang/String;[BLjava/lang/String;IZ)V

    .line 251
    return-void
.end method

.method public static final sendUpdateNotification(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "metadata"    # [B
    .param p3, "locationType"    # Ljava/lang/String;
    .param p4, "dopTimeText"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.upgrade.version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "com.motorola.blur.service.blur.upgrade.metadata"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 98
    const-string v1, "com.motorola.blur.service.blur.upgrade.location_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "com.motorola.blur.service.blur.upgrade.download_opt_check"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public static final sendUpdateNotificationResponse(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "action"    # Z
    .param p3, "flavour"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_NOTIFICATION_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.upgrade.version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, "com.motorola.blur.service.blur.upgrade.response_action"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string v1, "com.motorola.blur.service.blur.upgrade.response_flavour"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 174
    return-void
.end method

.method public static final sendUpdateResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "flavour"    # Ljava/lang/String;

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.upgrade.version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v1, "com.motorola.blur.service.blur.upgrade.result_flavour"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 195
    return-void
.end method

.method public static final sendUpdateStatus(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "isupdatesuccessful"    # Z

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.upgrade.version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v1, "com.motorola.blur.service.blur.upgrade.update_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public static final sendUpdaterStateReset(Landroid/content/Context;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATER_STATE_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method public static final sendUpgradeExecute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "metadata"    # [B

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_EXECUTE_UPGRADE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.upgrade.version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string v1, "com.motorola.blur.service.blur.upgrade.metadata"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 315
    const-string v1, "com.motorola.blur.service.blur.upgrade.file_location"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 317
    return-void
.end method

.method public static final sendUpgradeLaunchProceed(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_LAUNCH_UPGRADE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.blur.upgrade.version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v1, "com.motorola.blur.service.blur.upgrade.upgrade_launch_proceed"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 300
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 301
    return-void
.end method

.method public static final totalBytesFromIntent(Landroid/content/Intent;)I
    .locals 3
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 282
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.motorola.blur.service.blur.Actions.UPGRADE_DOWNLOAD_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    :goto_0
    return v0

    :cond_0
    const-string v1, "com.motorola.blur.service.blur.upgrade.bytes_total"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static final unregisterService(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 413
    return-void
.end method

.method public static final unregisterStatusApp(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 380
    return-void
.end method

.method public static final unregisterUpgrader(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    return-void
.end method

.method public static final versionFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_NOTIFICATION_RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_UPDATE_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_DOWNLOAD_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_LAUNCH_UPGRADE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.blur.service.blur.Actions.UPGRADE_EXECUTE_UPGRADE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    const-string v0, "com.motorola.blur.service.blur.upgrade.version"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
