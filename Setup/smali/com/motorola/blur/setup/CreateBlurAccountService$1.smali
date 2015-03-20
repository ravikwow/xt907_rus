.class Lcom/motorola/blur/setup/CreateBlurAccountService$1;
.super Landroid/os/Handler;
.source "CreateBlurAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/CreateBlurAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBlurAccountService;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 78
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 108
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 110
    :goto_0
    return-void

    .line 80
    :pswitch_0
    const-string v2, "SetupCBBAS"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, " timed report triggered!!"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-static {v2}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->hasBlurAccount(Landroid/content/Context;)Z

    move-result v1

    .line 82
    .local v1, "provisioned":Z
    if-ne v1, v6, :cond_0

    .line 83
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/CreateBlurAccountService;->stopAutoTrackService()V

    goto :goto_0

    .line 85
    :cond_0
    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountService;->sRetriedTimes:I
    invoke-static {}, Lcom/motorola/blur/setup/CreateBlurAccountService;->access$000()I

    move-result v2

    if-ge v2, v8, :cond_2

    .line 86
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountService;->mBusyOnDuty:Z
    invoke-static {v2}, Lcom/motorola/blur/setup/CreateBlurAccountService;->access$100(Lcom/motorola/blur/setup/CreateBlurAccountService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    const-string v2, "SetupCBBAS"

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retry at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountService;->sRetriedTimes:I
    invoke-static {}, Lcom/motorola/blur/setup/CreateBlurAccountService;->access$000()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 88
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    # setter for: Lcom/motorola/blur/setup/CreateBlurAccountService;->mBusyOnDuty:Z
    invoke-static {v2, v6}, Lcom/motorola/blur/setup/CreateBlurAccountService;->access$102(Lcom/motorola/blur/setup/CreateBlurAccountService;Z)Z

    .line 89
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    # setter for: Lcom/motorola/blur/setup/CreateBlurAccountService;->mSignFrom:I
    invoke-static {v2, v8}, Lcom/motorola/blur/setup/CreateBlurAccountService;->access$202(Lcom/motorola/blur/setup/CreateBlurAccountService;I)I

    .line 90
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/CreateBlurAccountService;->startSignUpWithRandomId()V

    .line 95
    :goto_1
    const-string v2, "SetupCBBAS"

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " timer fired!!,times="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountService;->sRetriedTimes:I
    invoke-static {}, Lcom/motorola/blur/setup/CreateBlurAccountService;->access$000()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 92
    :cond_1
    const-string v2, "SetupCBBAS"

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "busy: no retry at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountService;->sRetriedTimes:I
    invoke-static {}, Lcom/motorola/blur/setup/CreateBlurAccountService;->access$000()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 93
    # operator++ for: Lcom/motorola/blur/setup/CreateBlurAccountService;->sRetriedTimes:I
    invoke-static {}, Lcom/motorola/blur/setup/CreateBlurAccountService;->access$008()I

    goto :goto_1

    .line 98
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "SilentRegActionTemplyFailed"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    const-string v3, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/CreateBlurAccountService;->stopAutoTrackService()V

    goto/16 :goto_0

    .line 105
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "provisioned":Z
    :pswitch_1
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountService$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/CreateBlurAccountService;->startSignUpWithRandomId()V

    goto/16 :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
