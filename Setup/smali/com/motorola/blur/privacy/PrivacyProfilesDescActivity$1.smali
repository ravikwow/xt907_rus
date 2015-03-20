.class Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity$1;
.super Ljava/lang/Object;
.source "PrivacyProfilesDescActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity$1;->this$0:Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0003

    if-ne v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity$1;->this$0:Lcom/motorola/blur/privacy/PrivacyProfilesDescActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 36
    :cond_0
    return-void
.end method
