.class public Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BotaUpgradeCheckReceiver.java"


# static fields
.field private static final KEY_BOOTSTRAP:Ljava/lang/String; = "com.motorola.blur.service.blur.upgrade.bootstrap"

.field private static final KEY_REQUESTID:Ljava/lang/String; = "com.motorola.blur.service.blur.upgrade.requestid"

.field private static final TAG:Ljava/lang/String; = "BotaUpgradeCheckReceiver"

.field private static final UPGRADE_CHECK_FOR_UPDATE:Ljava/lang/String; = "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public checkBotaUpgradeAvail(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    invoke-static {p1}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->isBlurAccountProvisioned(Landroid/content/Context;)Z

    move-result v2

    .line 50
    .local v2, "isBlurAcctCreated":Z
    if-nez v2, :cond_0

    .line 52
    const-string v6, "BotaUpgradeCheckReceiver"

    const-string v7, "Blur account has not been created.  Wait for next trigger."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return v5

    .line 58
    :cond_0
    invoke-static {p1}, Lcom/motorola/blur/setup/SetupUtility;->checkSetupCompleted(Landroid/content/Context;)Z

    move-result v4

    .line 59
    .local v4, "setupFinished":Z
    if-nez v4, :cond_1

    .line 61
    const-string v6, "BotaUpgradeCheckReceiver"

    const-string v7, "Setup has not finished running.  Wait for next trigger."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    const-class v9, Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver;

    invoke-direct {v8, p1, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 68
    .local v0, "enabledState":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_2

    move v3, v6

    .line 69
    .local v3, "isDisabled":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 71
    const-string v6, "BotaUpgradeCheckReceiver"

    const-string v7, "BotaUpgradeCheckReceiver was already disabled.  No need to run again."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "isDisabled":Z
    :cond_2
    move v3, v5

    .line 68
    goto :goto_1

    .line 76
    .restart local v3    # "isDisabled":Z
    :cond_3
    const-string v7, "BotaUpgradeCheckReceiver"

    const-string v8, "Disabling BotaUpgradeReceiver components."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-class v8, Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver;

    invoke-static {v7, p1, v8, v5}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)Z

    .line 81
    const-string v7, "BotaUpgradeCheckReceiver"

    const-string v8, "Sending broadcast to CCE for BOTA upgrade check."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.motorola.blur.service.blur.Actions.UPGRADE_CHECK_FOR_UPDATE"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "intentBotaCheck":Landroid/content/Intent;
    const-string v7, "com.motorola.blur.service.blur.upgrade.bootstrap"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    const-string v5, "com.motorola.blur.service.blur.upgrade.requestid"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 87
    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    const-string v0, "BotaUpgradeCheckReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver$1;-><init>(Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 38
    return-void
.end method
