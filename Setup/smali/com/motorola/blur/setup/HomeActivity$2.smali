.class Lcom/motorola/blur/setup/HomeActivity$2;
.super Landroid/text/style/ClickableSpan;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/HomeActivity;->setPrivacyLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/HomeActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/HomeActivity;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/motorola/blur/setup/HomeActivity$2;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/motorola/blur/setup/HomeActivity$2;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/motorola/blur/setup/HomeActivity$2;->this$0:Lcom/motorola/blur/setup/HomeActivity;

    const-class v3, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 817
    return-void
.end method
