.class Lcom/android/settings/NFCTermsOfServiceActivity$1;
.super Landroid/webkit/WebViewClient;
.source "NFCTermsOfServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NFCTermsOfServiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NFCTermsOfServiceActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/NFCTermsOfServiceActivity;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/NFCTermsOfServiceActivity$1;->this$0:Lcom/android/settings/NFCTermsOfServiceActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/NFCTermsOfServiceActivity$1;->this$0:Lcom/android/settings/NFCTermsOfServiceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 55
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/NFCTermsOfServiceActivity$1;->this$0:Lcom/android/settings/NFCTermsOfServiceActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 50
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    return v0
.end method
