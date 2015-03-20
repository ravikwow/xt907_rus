.class Lcom/motorola/blur/setup/CongratsActivity$1;
.super Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;
.source "CongratsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/CongratsActivity;->GoNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CongratsActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CongratsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/motorola/blur/setup/CongratsActivity$1;->this$0:Lcom/motorola/blur/setup/CongratsActivity;

    invoke-direct {p0, p2}, Lcom/motorola/blur/setup/AbstractLaunchHomeActivityTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected doAfterPostExecute()V
    .locals 3

    .prologue
    .line 239
    new-instance v0, Lcom/motorola/blur/setup/CongratsActivity$1$1;

    iget-object v1, p0, Lcom/motorola/blur/setup/CongratsActivity$1;->this$0:Lcom/motorola/blur/setup/CongratsActivity;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/blur/setup/CongratsActivity$1$1;-><init>(Lcom/motorola/blur/setup/CongratsActivity$1;Landroid/content/Context;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    return-void
.end method
