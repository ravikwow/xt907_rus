.class Lcom/motorola/blur/privacy/PrivacyPolicyActivity$1;
.super Ljava/lang/Object;
.source "PrivacyPolicyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 150
    iput-object p1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$1;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$1;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    # invokes: Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->launchTrusteLink()V
    invoke-static {v0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->access$000(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)V

    .line 153
    return-void
.end method
