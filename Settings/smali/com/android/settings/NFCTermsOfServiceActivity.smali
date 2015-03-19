.class public Lcom/android/settings/NFCTermsOfServiceActivity;
.super Landroid/app/Activity;
.source "NFCTermsOfServiceActivity.java"


# instance fields
.field mBrowser:Landroid/webkit/WebView;

.field mUrlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const-string v0, "https://www.motorola.com/nfc/terms"

    iput-object v0, p0, Lcom/android/settings/NFCTermsOfServiceActivity;->mUrlPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 32
    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 33
    const-string v0, "NFCTermsOfServiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UrlPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NFCTermsOfServiceActivity;->mUrlPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/settings/NFCTermsOfServiceActivity;->mBrowser:Landroid/webkit/WebView;

    .line 36
    iget-object v0, p0, Lcom/android/settings/NFCTermsOfServiceActivity;->mBrowser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 37
    iget-object v0, p0, Lcom/android/settings/NFCTermsOfServiceActivity;->mBrowser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 38
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/NFCTermsOfServiceActivity;->mBrowser:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/settings/NFCTermsOfServiceActivity;->mUrlPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/android/settings/NFCTermsOfServiceActivity;->mBrowser:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/settings/NFCTermsOfServiceActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/NFCTermsOfServiceActivity$1;-><init>(Lcom/android/settings/NFCTermsOfServiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 57
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 61
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/NFCTermsOfServiceActivity;->mBrowser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/NFCTermsOfServiceActivity;->mBrowser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
