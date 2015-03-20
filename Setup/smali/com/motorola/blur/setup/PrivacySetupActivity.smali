.class public Lcom/motorola/blur/setup/PrivacySetupActivity;
.super Lcom/motorola/blur/fsm/SetupActivityGroupFSM;
.source "PrivacySetupActivity.java"


# static fields
.field static final INITIAL_SETUP:Ljava/lang/String; = "initial_setup"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onActivityResult(IILandroid/content/Intent;)V

    .line 21
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 22
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->setTosAccepted(Landroid/content/Context;Z)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->finish(Landroid/app/Activity;)V

    .line 26
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "initial_setup"

    iget-object v2, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v2}, Lcom/motorola/blur/fsm/SetupFSM;->isExtraIsInitialSetupFlow()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 16
    return-void
.end method
