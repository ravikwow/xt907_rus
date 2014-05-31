.class Lcom/android/settings/nfc/NfcAlert$1;
.super Landroid/text/style/ClickableSpan;
.source "NfcAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcAlert;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcAlert;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcAlert;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/nfc/NfcAlert$1;->this$0:Lcom/android/settings/nfc/NfcAlert;

    iput-object p2, p0, Lcom/android/settings/nfc/NfcAlert$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAlert$1;->this$0:Lcom/android/settings/nfc/NfcAlert;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcAlert$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcAlert;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 81
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 83
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 84
    return-void
.end method
