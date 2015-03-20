.class public Lcom/motorola/blur/setup/SkipSetupActivity;
.super Lcom/motorola/blur/fsm/SetupActivityGroupFSM;
.source "SkipSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BUNDLE_ACTIVITY_STARTED:Ljava/lang/String; = "com.motorola.blur.setup.activity_started"

.field private static final TAG:Ljava/lang/String; = "SkipSetupActivity"


# instance fields
.field private mActivityRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/SkipSetupActivity;->mActivityRunning:Z

    return-void
.end method

.method private launchLBS()V
    .locals 5

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f080000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "carrierLbsIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/motorola/blur/setup/SetupUtility;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/16 v1, 0x3d

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v1, "SkipSetupActivity"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "No Carrier LBS receiver available"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->goNext()V

    goto :goto_0
.end method


# virtual methods
.method protected final goNext()V
    .locals 3

    .prologue
    .line 136
    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->isEmaraFlow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/setup/LocationConsentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 142
    const/16 v1, 0x40

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 154
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v1, Lcom/motorola/blur/setup/SkipSetupActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/motorola/blur/setup/SkipSetupActivity$1;-><init>(Lcom/motorola/blur/setup/SkipSetupActivity;Landroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onActivityResult(IILandroid/content/Intent;)V

    .line 80
    const/16 v1, 0x3d

    if-ne p1, v1, :cond_2

    .line 82
    if-nez p2, :cond_1

    .line 83
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->launchGuidedTours()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v1, "SkipSetupActivity"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Guided Tour not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 90
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->launchSetupNotify()V

    .line 91
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->goNext()V

    goto :goto_0

    .line 93
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_2
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_4

    .line 94
    if-nez p2, :cond_3

    .line 95
    invoke-direct {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->launchLBS()V

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->launchSetupNotify()V

    .line 98
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->goNext()V

    goto :goto_0

    .line 100
    :cond_4
    const/16 v1, 0x40

    if-ne p1, v1, :cond_5

    .line 101
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 102
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 103
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    goto :goto_0

    .line 106
    :cond_5
    const-string v1, "SkipSetupActivity"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: Unexpected requestCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 113
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->goNext()V

    goto :goto_0

    .line 116
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 117
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x7f0c0000
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->isSetupHomeDisabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 40
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->isEmaraFlow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    :cond_2
    const v1, 0x7f03001d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    .line 48
    :cond_3
    const v1, 0x1030055

    invoke-virtual {p0, v1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 49
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_initial_setup_flow"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    .local v0, "is_initial_setup_flow":Z
    invoke-static {p0}, Lcom/motorola/blur/setup/SetupUtility;->isVerizonFlow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isBlurSetupDeferred(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 54
    if-eqz p1, :cond_4

    .line 55
    const-string v1, "com.motorola.blur.setup.activity_started"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/blur/setup/SkipSetupActivity;->mActivityRunning:Z

    .line 57
    :cond_4
    iget-boolean v1, p0, Lcom/motorola/blur/setup/SkipSetupActivity;->mActivityRunning:Z

    if-nez v1, :cond_0

    .line 58
    iput-boolean v4, p0, Lcom/motorola/blur/setup/SkipSetupActivity;->mActivityRunning:Z

    .line 59
    invoke-direct {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->launchLBS()V

    goto :goto_0

    .line 61
    :cond_5
    if-nez v0, :cond_6

    .line 62
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 63
    invoke-virtual {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    goto :goto_0

    .line 65
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SkipSetupActivity;->goNext()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "com.motorola.blur.setup.activity_started"

    iget-boolean v1, p0, Lcom/motorola/blur/setup/SkipSetupActivity;->mActivityRunning:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    return-void
.end method
