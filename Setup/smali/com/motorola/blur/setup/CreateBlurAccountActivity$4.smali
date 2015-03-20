.class Lcom/motorola/blur/setup/CreateBlurAccountActivity$4;
.super Ljava/lang/Object;
.source "CreateBlurAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/CreateBlurAccountActivity;->checkConnectionAndStartSevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBlurAccountActivity;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$4;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 254
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$4;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const-class v2, Lcom/motorola/blur/setup/ConnectionFailed;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_initial_setup_flow"

    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$4;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_initial_setup_flow"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/motorola/blur/setup/CreateBlurAccountActivity$4;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountActivity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 259
    return-void
.end method
