.class Lcom/motorola/blur/privacy/PrivacyPolicyActivity$4;
.super Ljava/lang/Object;
.source "PrivacyPolicyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/privacy/PrivacyPolicyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$4;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$4;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-static {v0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->isTosAccepted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$4;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    # invokes: Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->setTosAccepted(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->access$300(Landroid/content/Context;)V

    .line 256
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$4;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    # invokes: Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->dismissReminder()V
    invoke-static {v0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->access$400(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$4;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 260
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$4;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 261
    return-void
.end method
