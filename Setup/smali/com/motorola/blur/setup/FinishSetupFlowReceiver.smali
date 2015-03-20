.class public Lcom/motorola/blur/setup/FinishSetupFlowReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FinishSetupFlowReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FinishSetupReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/FinishSetupFlowReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/setup/FinishSetupFlowReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/FinishSetupFlowReceiver;->disableThisReceiver(Landroid/content/Context;)V

    return-void
.end method

.method private disableThisReceiver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 58
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v0, "name":Landroid/content/ComponentName;
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 62
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setup_finish_package"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 21
    .local v0, "finishFromSetup":Z
    if-eqz v0, :cond_0

    .line 22
    const-string v1, "FinishSetupReceiver"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "setup finished from setup"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 26
    :goto_0
    new-instance v1, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;

    invoke-direct {v1, p0, p1, v0}, Lcom/motorola/blur/setup/FinishSetupFlowReceiver$FinishSetupTask;-><init>(Lcom/motorola/blur/setup/FinishSetupFlowReceiver;Landroid/content/Context;Z)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 27
    return-void

    .line 24
    :cond_0
    const-string v1, "FinishSetupReceiver"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "setup finished from other app"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
