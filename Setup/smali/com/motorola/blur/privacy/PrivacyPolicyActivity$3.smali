.class Lcom/motorola/blur/privacy/PrivacyPolicyActivity$3;
.super Ljava/lang/Object;
.source "PrivacyPolicyActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 242
    iput-object p1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$3;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$3;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    # setter for: Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mTosChecked:Z
    invoke-static {v0, p2}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->access$102(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;Z)Z

    .line 247
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$3;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    # getter for: Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mOkButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->access$200(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$3;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    # getter for: Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mTosChecked:Z
    invoke-static {v1}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->access$100(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 248
    return-void
.end method
