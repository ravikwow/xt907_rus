.class public abstract Lcom/motorola/blur/fsm/SetupActivityGroupFSM;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "SetupActivityGroupFSM.java"

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
    .line 12
    sget-object v0, Lcom/motorola/blur/setup/BlurAppSetup;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mIsController:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 86
    sget-object v1, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "finish: class="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected goBack()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->onBack(Landroid/app/Activity;)V

    .line 108
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->goBack()V

    .line 109
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 76
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/motorola/blur/fsm/SetupFSM;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->onBack(Landroid/app/Activity;)V

    .line 127
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onBackPressed()V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 118
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    const-string v1, "FSMSTATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/fsm/SetupFSM;

    .line 37
    .local v0, "fsmObject":Lcom/motorola/blur/fsm/SetupFSM;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->setControllerActivity(Landroid/app/Activity;)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/setup/BlurAppSetup;

    invoke-virtual {v1, v0}, Lcom/motorola/blur/setup/BlurAppSetup;->setFSM(Lcom/motorola/blur/fsm/SetupFSM;)V

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mIsController:Z

    .line 44
    .end local v0    # "fsmObject":Lcom/motorola/blur/fsm/SetupFSM;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/setup/BlurAppSetup;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/BlurAppSetup;->getFSM()Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    .line 45
    iget-object v1, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v1, p0}, Lcom/motorola/blur/fsm/SetupFSM;->onCreate(Landroid/app/Activity;)V

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->onDestroy(Landroid/app/Activity;)V

    .line 70
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 71
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 51
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/blur/fsm/SetupFSM;->checkStartRootActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method public onNext()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->onNext(Landroid/app/Activity;)V

    .line 123
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mIsController:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "FSMSTATE"

    iget-object v1, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 98
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    sget-object v0, Lcom/motorola/blur/setup/BlurAppSetup;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ".onSaveInstanceState"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 103
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onStart()V

    .line 57
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->checkStartRootActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 58
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->onStart(Landroid/app/Activity;)V

    .line 59
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 64
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    invoke-virtual {v0, p0}, Lcom/motorola/blur/fsm/SetupFSM;->onStop(Landroid/app/Activity;)V

    .line 65
    return-void
.end method

.method public setIsController(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mIsController:Z

    .line 26
    return-void
.end method
