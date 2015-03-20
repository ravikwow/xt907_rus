.class Lcom/motorola/blur/setup/CongratsActivity$1$1;
.super Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;
.source "CongratsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/CongratsActivity$1;->doAfterPostExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/blur/setup/CongratsActivity$1;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CongratsActivity$1;Landroid/content/Context;Z)V
    .locals 1
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Z

    .prologue
    .line 239
    iput-object p1, p0, Lcom/motorola/blur/setup/CongratsActivity$1$1;->this$1:Lcom/motorola/blur/setup/CongratsActivity$1;

    iget-object v0, p1, Lcom/motorola/blur/setup/CongratsActivity$1;->this$0:Lcom/motorola/blur/setup/CongratsActivity;

    invoke-direct {p0, v0, p2, p3}, Lcom/motorola/blur/setup/SetupActivity$FinishSetupTask;-><init>(Lcom/motorola/blur/setup/SetupActivity;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected beforeFinish()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/motorola/blur/setup/CongratsActivity$1$1;->this$1:Lcom/motorola/blur/setup/CongratsActivity$1;

    iget-object v0, v0, Lcom/motorola/blur/setup/CongratsActivity$1;->this$0:Lcom/motorola/blur/setup/CongratsActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/blur/setup/CongratsActivity;->mDonePressed:Z

    .line 243
    return-void
.end method
