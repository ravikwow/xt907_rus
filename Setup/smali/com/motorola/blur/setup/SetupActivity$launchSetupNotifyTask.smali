.class Lcom/motorola/blur/setup/SetupActivity$launchSetupNotifyTask;
.super Landroid/os/AsyncTask;
.source "SetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/SetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "launchSetupNotifyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Lcom/motorola/blur/setup/SetupActivity;

.field private final packageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/motorola/blur/setup/SetupActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/setup/SetupActivity;Landroid/content/pm/PackageManager;Lcom/motorola/blur/setup/SetupActivity;)V
    .locals 0
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "setupActivity"    # Lcom/motorola/blur/setup/SetupActivity;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/motorola/blur/setup/SetupActivity$launchSetupNotifyTask;->this$0:Lcom/motorola/blur/setup/SetupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 383
    iput-object p2, p0, Lcom/motorola/blur/setup/SetupActivity$launchSetupNotifyTask;->packageManager:Landroid/content/pm/PackageManager;

    .line 384
    iput-object p3, p0, Lcom/motorola/blur/setup/SetupActivity$launchSetupNotifyTask;->activity:Lcom/motorola/blur/setup/SetupActivity;

    .line 385
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 393
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.motorola.setupwizard.controller"

    const-string v5, "com.motorola.setupwizard.controller.VzwEventReciever"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .local v2, "vzwEventReciever":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.motorola.setupwizard.controller"

    const-string v5, "com.motorola.setupwizard.controller.VzwBaseHome"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .local v3, "vzwHomeComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.motorola.blur.setup"

    const-string v5, "com.motorola.blur.setup.HomeActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .local v1, "setupHomeComponent":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/motorola/blur/setup/SetupActivity$launchSetupNotifyTask;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v4, v8, :cond_0

    .line 397
    iget-object v4, p0, Lcom/motorola/blur/setup/SetupActivity$launchSetupNotifyTask;->packageManager:Landroid/content/pm/PackageManager;

    const-string v5, "com.motorola.setupwizard.controller"

    const-string v6, "com.motorola.setupwizard.controller.VzwEventReciever"

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 398
    :cond_0
    iget-object v4, p0, Lcom/motorola/blur/setup/SetupActivity$launchSetupNotifyTask;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v4, v8, :cond_1

    .line 399
    iget-object v4, p0, Lcom/motorola/blur/setup/SetupActivity$launchSetupNotifyTask;->packageManager:Landroid/content/pm/PackageManager;

    const-string v5, "com.motorola.setupwizard.controller"

    const-string v6, "com.motorola.setupwizard.controller.VzwBaseHome"

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 400
    :cond_1
    iget-object v4, p0, Lcom/motorola/blur/setup/SetupActivity$launchSetupNotifyTask;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v4, v8, :cond_2

    .line 401
    iget-object v4, p0, Lcom/motorola/blur/setup/SetupActivity$launchSetupNotifyTask;->packageManager:Landroid/content/pm/PackageManager;

    const-string v5, "com.motorola.blur.setup"

    const-string v6, "com.motorola.blur.setup.HomeActivity"

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v1    # "setupHomeComponent":Landroid/content/ComponentName;
    .end local v2    # "vzwEventReciever":Landroid/content/ComponentName;
    .end local v3    # "vzwHomeComponent":Landroid/content/ComponentName;
    :cond_2
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "SetupActivity"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "Exception: "

    aput-object v6, v5, v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 379
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/SetupActivity$launchSetupNotifyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
