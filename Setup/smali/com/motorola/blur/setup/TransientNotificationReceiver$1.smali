.class Lcom/motorola/blur/setup/TransientNotificationReceiver$1;
.super Ljava/lang/Object;
.source "TransientNotificationReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/TransientNotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/TransientNotificationReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/TransientNotificationReceiver;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/motorola/blur/setup/TransientNotificationReceiver$1;->this$0:Lcom/motorola/blur/setup/TransientNotificationReceiver;

    iput-object p2, p0, Lcom/motorola/blur/setup/TransientNotificationReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/blur/setup/TransientNotificationReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 18
    iget-object v1, p0, Lcom/motorola/blur/setup/TransientNotificationReceiver$1;->val$action:Ljava/lang/String;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/blur/setup/TransientNotificationReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/blur/setup/SetupUtility;->checkSetupCompleted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    :goto_0
    return-void

    .line 21
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.action.SEND_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v1, "NOTIFICATION_ID"

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    iget-object v1, p0, Lcom/motorola/blur/setup/TransientNotificationReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 24
    iget-object v1, p0, Lcom/motorola/blur/setup/TransientNotificationReceiver$1;->this$0:Lcom/motorola/blur/setup/TransientNotificationReceiver;

    iget-object v2, p0, Lcom/motorola/blur/setup/TransientNotificationReceiver$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/motorola/blur/setup/TransientNotificationReceiver;->disableThisReceiver(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/motorola/blur/setup/TransientNotificationReceiver;->access$000(Lcom/motorola/blur/setup/TransientNotificationReceiver;Landroid/content/Context;)V

    goto :goto_0
.end method
