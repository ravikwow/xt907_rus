.class Lcom/motorola/blur/privacy/PrivacyPolicyActivity$5;
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
    .line 264
    iput-object p1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$5;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$5;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 267
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$5;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 268
    return-void
.end method
