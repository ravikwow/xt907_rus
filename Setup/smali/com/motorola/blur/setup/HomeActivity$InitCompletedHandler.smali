.class Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;
.super Landroid/os/Handler;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitCompletedHandler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/motorola/blur/setup/HomeActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/HomeActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    .line 114
    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/blur/setup/SetupUtility;->isReady2GoInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v0}, Lcom/motorola/blur/setup/HomeActivity;->access$000(Lcom/motorola/blur/setup/HomeActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/blur/fsm/SetupFSM;->isTabletFlow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v0}, Lcom/motorola/blur/setup/HomeActivity;->access$100(Lcom/motorola/blur/setup/HomeActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/fsm/SetupFSM;->onNext(Landroid/app/Activity;I)V

    .line 121
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v0}, Lcom/motorola/blur/setup/HomeActivity;->access$500(Lcom/motorola/blur/setup/HomeActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    iget-object v1, v1, Lcom/motorola/blur/setup/HomeActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->unregisterInitHandler(Landroid/os/Handler;)V

    .line 123
    :cond_2
    return-void

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v0}, Lcom/motorola/blur/setup/HomeActivity;->access$200(Lcom/motorola/blur/setup/HomeActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/blur/fsm/SetupFSM;->isShowWelcomeLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    # getter for: Lcom/motorola/blur/setup/HomeActivity;->mStartButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/motorola/blur/setup/HomeActivity;->access$300(Lcom/motorola/blur/setup/HomeActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    # getter for: Lcom/motorola/blur/setup/HomeActivity;->mStartButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/motorola/blur/setup/HomeActivity;->access$300(Lcom/motorola/blur/setup/HomeActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 119
    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$InitCompletedHandler;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    # invokes: Lcom/motorola/blur/setup/HomeActivity;->setPrivacyLink()V
    invoke-static {v0}, Lcom/motorola/blur/setup/HomeActivity;->access$400(Lcom/motorola/blur/setup/HomeActivity;)V

    goto :goto_0
.end method
