.class Lcom/motorola/blur/privacy/PrivacyProfilesActivity$2;
.super Landroid/text/style/ClickableSpan;
.source "PrivacyProfilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/privacy/PrivacyProfilesActivity;->setLink(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/privacy/PrivacyProfilesActivity;

.field final synthetic val$i:Landroid/content/Intent;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/motorola/blur/privacy/PrivacyProfilesActivity;Landroid/content/res/Resources;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$2;->this$0:Lcom/motorola/blur/privacy/PrivacyProfilesActivity;

    iput-object p2, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$2;->val$res:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$2;->val$i:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$2;->this$0:Lcom/motorola/blur/privacy/PrivacyProfilesActivity;

    iget-object v1, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$2;->val$i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "drawstate"    # Landroid/text/TextPaint;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 98
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyProfilesActivity$2;->val$res:Landroid/content/res/Resources;

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    return-void
.end method
