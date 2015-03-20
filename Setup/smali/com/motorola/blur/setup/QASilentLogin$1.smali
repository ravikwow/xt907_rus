.class Lcom/motorola/blur/setup/QASilentLogin$1;
.super Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;
.source "QASilentLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/QASilentLogin;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/QASilentLogin;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/QASilentLogin;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/motorola/blur/setup/QASilentLogin$1;->this$0:Lcom/motorola/blur/setup/QASilentLogin;

    invoke-direct {p0, p2}, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected doAfterPostExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;

    iget-object v1, p0, Lcom/motorola/blur/setup/QASilentLogin$1;->this$0:Lcom/motorola/blur/setup/QASilentLogin;

    iget-object v2, p0, Lcom/motorola/blur/setup/QASilentLogin$1;->this$0:Lcom/motorola/blur/setup/QASilentLogin;

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;-><init>(Lcom/motorola/blur/setup/SetupActivity;Landroid/content/Context;Z)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 20
    return-void
.end method
