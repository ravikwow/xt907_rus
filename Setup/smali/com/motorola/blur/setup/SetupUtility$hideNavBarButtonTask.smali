.class public Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;
.super Landroid/os/AsyncTask;
.source "SetupUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/SetupUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "hideNavBarButtonTask"
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
.field private final activity:Landroid/app/Activity;

.field private final hideBackButton:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "curActivity"    # Landroid/app/Activity;
    .param p2, "hide"    # Z

    .prologue
    .line 401
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;->activity:Landroid/app/Activity;

    .line 403
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;->hideBackButton:Ljava/lang/Boolean;

    .line 404
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/motorola/blur/setup/SetupUtility;->checkSetupCompleted(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 398
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "setupCompleted"    # Ljava/lang/Boolean;

    .prologue
    .line 412
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;->hideBackButton:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/blur/setup/SetupUtility;->hideNavbarButton(Landroid/view/View;Z)V

    .line 415
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 398
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
