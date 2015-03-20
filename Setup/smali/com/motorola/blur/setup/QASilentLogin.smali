.class public Lcom/motorola/blur/setup/QASilentLogin;
.super Lcom/motorola/blur/fsm/SetupActivityGroupFSM;
.source "QASilentLogin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/motorola/blur/setup/SetupActivity;->launchSetupNotify()V

    .line 17
    new-instance v0, Lcom/motorola/blur/setup/QASilentLogin$1;

    invoke-direct {v0, p0, p0}, Lcom/motorola/blur/setup/QASilentLogin$1;-><init>(Lcom/motorola/blur/setup/QASilentLogin;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 22
    return-void
.end method
