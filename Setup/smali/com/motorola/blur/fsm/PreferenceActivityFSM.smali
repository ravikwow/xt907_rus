.class public Lcom/motorola/blur/fsm/PreferenceActivityFSM;
.super Landroid/preference/PreferenceActivity;
.source "PreferenceActivityFSM.java"

# interfaces
.implements Lcom/motorola/blur/fsm/SetupActivityInterfaceFSM;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mFSM:Lcom/motorola/blur/fsm/SetupFSM;

.field protected mIsController:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/motorola/blur/setup/BlurAppSetup;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mIsController:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 88
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 79
    iget-object v0, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/motorola/blur/fsm/SetupFSM;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->onBack(Landroid/app/Activity;)V

    .line 107
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    const-string v1, "FSMSTATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/fsm/SetupFSM;

    .line 36
    .local v0, "fsmObject":Lcom/motorola/blur/fsm/SetupFSM;
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->setControllerActivity(Landroid/app/Activity;)V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/setup/BlurAppSetup;

    invoke-virtual {v1, v0}, Lcom/motorola/blur/setup/BlurAppSetup;->setFSM(Lcom/motorola/blur/fsm/SetupFSM;)V

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mIsController:Z

    .line 43
    .end local v0    # "fsmObject":Lcom/motorola/blur/fsm/SetupFSM;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/setup/BlurAppSetup;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/BlurAppSetup;->getFSM()Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    .line 44
    iget-object v1, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v1, p0}, Lcom/motorola/blur/fsm/SetupFSM;->onCreate(Landroid/app/Activity;)V

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->onDestroy(Landroid/app/Activity;)V

    .line 69
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 70
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 50
    iget-object v0, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/blur/fsm/SetupFSM;->checkStartRootActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public onNext()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->onNext(Landroid/app/Activity;)V

    .line 103
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mIsController:Z

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "FSMSTATE"

    iget-object v1, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 94
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 56
    iget-object v0, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->checkStartRootActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 57
    iget-object v0, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->onStart(Landroid/app/Activity;)V

    .line 58
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 63
    iget-object v0, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->onStop(Landroid/app/Activity;)V

    .line 64
    return-void
.end method

.method public setIsController(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/motorola/blur/fsm/PreferenceActivityFSM;->mIsController:Z

    .line 25
    return-void
.end method
