.class Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;
.super Landroid/os/AsyncTask;
.source "CreateBlurAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;->this$1:Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;->this$1:Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;

    iget-object v0, v0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    invoke-static {v0}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->hasBlurAccount(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 214
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "provisioned"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 223
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;->this$1:Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;

    iget-object v1, v1, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 224
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;->this$1:Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;

    iget-object v1, v1, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$1100(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v1

    const-string v2, "motoIdRestore"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/fsm/SetupFSM;->setRestorMotoId(Z)V

    .line 226
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;->this$1:Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;

    iget-object v1, v1, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const-string v2, "motoid"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mMotoId:Z
    invoke-static {v1, v2}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$402(Lcom/motorola/blur/setup/CreateBlurAccountActivity;Z)Z

    .line 229
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;->this$1:Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;

    iget-object v1, v1, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->startAutoSignUpService()V
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$1000(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)V

    .line 240
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;->this$1:Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;

    iget-object v1, v1, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->mQASilentLoginReqd:Z
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$100(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;->this$1:Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;

    iget-object v1, v1, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$1200(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;->this$1:Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;

    iget-object v2, v2, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/blur/fsm/SetupFSM;->finishWithResult(Landroid/app/Activity;I)V

    goto :goto_0

    .line 236
    :cond_2
    const-string v1, "SetupCBBAA"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "checkConnectionAndStartSevice().AsyncTask.onPostExecute(): (mQASilentLoginReqd == true) - finishBackgroundBlurAccountActivity(RESULT_OK)"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 237
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;->this$1:Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;

    iget-object v1, v1, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const/4 v2, -0x1

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountActivity;->finishBackgroundBlurAccountActivity(I)V
    invoke-static {v1, v2}, Lcom/motorola/blur/setup/CreateBlurAccountActivity;->access$600(Lcom/motorola/blur/setup/CreateBlurAccountActivity;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 214
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/CreateBlurAccountActivity$3$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
