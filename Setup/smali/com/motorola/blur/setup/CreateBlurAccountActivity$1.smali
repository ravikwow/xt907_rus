.class Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;
.super Landroid/os/Handler;
.source "CreateBlurAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/CreateBlurAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 53
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$000(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    monitor-enter v2

    .line 54
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mQASilentLoginReqd:Z
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$100(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$200(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiverRegistered:Z
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$300(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 59
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$000(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const/4 v3, 0x0

    # setter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mReceiverRegistered:Z
    invoke-static {v1, v3}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$302(Lcom/motorola/blur/setup/CreateBlurAccountActivity;Z)Z

    .line 63
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 133
    :goto_0
    monitor-exit v2

    .line 134
    :goto_1
    return-void

    .line 65
    :pswitch_0
    const-string v1, "SetupCBBAA"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "received success indication (SIGNUP_SUCCESS)!!"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mMotoId:Z
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$400(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    const-string v1, "SetupCBBAA"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "handleMessage(): (mMotoId == true) - setResult(RESULT_OK)"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 69
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$500(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    invoke-virtual {v1, v3}, Lcom/motorola/blur/fsm/SetupFSM;->finish(Landroid/app/Activity;)V

    goto :goto_0

    .line 133
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mQASilentLoginReqd:Z
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$100(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$200(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 75
    const-string v1, "SetupCBBAA"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "handleMessage(): (mQASilentLoginReqd == true) - finishBackgroundBlurAccountActivity(RESULT_OK)"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 76
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const/4 v3, -0x1

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->finishBackgroundBlurAccountActivity(I)V
    invoke-static {v1, v3}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$600(Lcom/motorola/blur/setup/CreateBlurAccountActivity;I)V

    .line 77
    monitor-exit v2

    goto :goto_1

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$700(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Lcom/motorola/blur/fsm/SetupFSM;->finishWithResult(Landroid/app/Activity;I)V

    goto :goto_0

    .line 83
    :pswitch_1
    const-string v1, "SetupCBBAA"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "  timeout!!"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mQASilentLoginReqd:Z
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$100(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const/4 v3, 0x0

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->finishBackgroundBlurAccountActivity(I)V
    invoke-static {v1, v3}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$600(Lcom/motorola/blur/setup/CreateBlurAccountActivity;I)V

    .line 86
    monitor-exit v2

    goto/16 :goto_1

    .line 90
    :cond_4
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mFromMain:Z
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$800(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 91
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$900(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Lcom/motorola/blur/fsm/SetupFSM;->finishWithResult(Landroid/app/Activity;I)V

    goto/16 :goto_0

    .line 93
    :cond_5
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const-class v3, Lcom/motorola/blur/setup/AccountCreationTimeout;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const/16 v3, 0xc

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 101
    :pswitch_2
    const-string v1, "SetupCBBAA"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, " temp failed!!"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 102
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mQASilentLoginReqd:Z
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$100(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 103
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->startAutoSignUpService()V
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$1000(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)V

    .line 104
    monitor-exit v2

    goto/16 :goto_1

    .line 107
    :cond_6
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const-class v3, Lcom/motorola/blur/setup/ServiceError;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 110
    const-string v1, "is_initial_setup_flow"

    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_initial_setup_flow"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 116
    :pswitch_3
    const-string v1, "SetupCBBAA"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, " radio down!!"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mQASilentLoginReqd:Z
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$100(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 118
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->startAutoSignUpService()V
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$1000(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)V

    .line 119
    monitor-exit v2

    goto/16 :goto_1

    .line 122
    :cond_7
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const-class v3, Lcom/motorola/blur/setup/ConnectionFailed;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 125
    const-string v1, "is_initial_setup_flow"

    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_initial_setup_flow"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$1;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
