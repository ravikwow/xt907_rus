.class Lcom/motorola/blur/setup/CreateBlurAccountReceiver$2;
.super Ljava/lang/Object;
.source "CreateBlurAccountReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/CreateBlurAccountReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBlurAccountReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBlurAccountReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountReceiver$2;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountReceiver;

    iput-object p2, p0, Lcom/motorola/blur/setup/CreateBlurAccountReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 76
    const-string v2, "CreateBlurAccountReceiver"

    const-string v3, "Starting CreateBlurAccountService."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->isGlobalDeviceProvisioningEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->isBlurSingleParentMode(Landroid/content/Context;)Z

    move-result v1

    .line 80
    .local v1, "isBlurSingleParentMode":Z
    if-nez v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountReceiver$2;->val$context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.blur.service.blur.Actions.CCE_PROVISION_DEVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 89
    .end local v1    # "isBlurSingleParentMode":Z
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountReceiver$2;->val$context:Landroid/content/Context;

    const-class v3, Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "SilentRegRequestFrom"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
