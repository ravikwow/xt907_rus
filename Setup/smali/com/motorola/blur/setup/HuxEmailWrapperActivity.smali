.class public Lcom/motorola/blur/setup/HuxEmailWrapperActivity;
.super Lcom/motorola/blur/fsm/SetupActivityGroupFSM;
.source "HuxEmailWrapperActivity.java"


# static fields
.field private static final BUNDLE_HUX_STARTED:Ljava/lang/String; = "com.motorola.blur.setup_hux_started"

.field public static final EXTRA_SHOW_INBOX:Ljava/lang/String; = "show_inbox"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mHuxStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/motorola/blur/setup/BlurAppSetup;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/motorola/blur/setup/HuxEmailWrapperActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/HuxEmailWrapperActivity;->mHuxStarted:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    const-string v0, "com.motorola.blur.setup_hux_started"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/HuxEmailWrapperActivity;->mHuxStarted:Z

    .line 48
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 57
    iget-boolean v0, p0, Lcom/motorola/blur/setup/HuxEmailWrapperActivity;->mHuxStarted:Z

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/motorola/blur/setup/HuxEmailWrapperActivity;->showHuxEmail()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/setup/HuxEmailWrapperActivity;->mHuxStarted:Z

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/motorola/blur/fsm/SetupFSM;->finishWithResult(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "com.motorola.blur.setup_hux_started"

    iget-boolean v1, p0, Lcom/motorola/blur/setup/HuxEmailWrapperActivity;->mHuxStarted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    return-void
.end method

.method public showHuxEmail()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    sget-object v1, Lcom/motorola/blur/setup/HuxEmailWrapperActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Launching HuxEmail"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "show_inbox"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    const/16 v1, 0x42

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 79
    return-void
.end method
