.class Lcom/motorola/blur/setup/CongratsActivity$2;
.super Landroid/text/style/ClickableSpan;
.source "CongratsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/CongratsActivity;->setPrivacyLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CongratsActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CongratsActivity;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/motorola/blur/setup/CongratsActivity$2;->this$0:Lcom/motorola/blur/setup/CongratsActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/motorola/blur/setup/CongratsActivity$2;->this$0:Lcom/motorola/blur/setup/CongratsActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/motorola/blur/setup/CongratsActivity$2;->this$0:Lcom/motorola/blur/setup/CongratsActivity;

    const-class v3, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 265
    return-void
.end method
