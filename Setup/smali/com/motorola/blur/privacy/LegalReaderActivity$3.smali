.class Lcom/motorola/blur/privacy/LegalReaderActivity$3;
.super Landroid/text/style/ClickableSpan;
.source "LegalReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/privacy/LegalReaderActivity;->showPrivacyLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/privacy/LegalReaderActivity;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$3;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$3;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$3;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    const-class v3, Lcom/motorola/blur/privacy/LegalReaderActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "FullPrivacy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    iget-object v3, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$3;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    const v4, 0x7f0800d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/motorola/blur/privacy/LegalReaderActivity$3;->this$0:Lcom/motorola/blur/privacy/LegalReaderActivity;

    const v4, 0x7f0800d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 256
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "drawstate"    # Landroid/text/TextPaint;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 248
    return-void
.end method
