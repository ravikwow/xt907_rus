.class public Lcom/android/settings/SettingsLicenseActivity;
.super Landroid/app/Activity;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSpinnerDlg:Landroid/app/ProgressDialog;

.field private mTextDlg:Landroid/app/AlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 127
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 128
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 129
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 130
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsLicenseActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsLicenseActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsLicenseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsLicenseActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsLicenseActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLicenseActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsLicenseActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLicenseActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 237
    :cond_0
    const v0, 0x7f0b052a

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V

    .line 240
    return-void
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 204
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0529

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 210
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/SettingsLicenseActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/SettingsLicenseActivity$2;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/android/settings/SettingsLicenseActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/SettingsLicenseActivity$3;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 229
    iput-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 230
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 140
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 141
    const-string v7, "SettingsLicenseActivity"

    const-string v8, "intent for loading OSS file is null."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 189
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v7, "oss"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "ossFileName":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 147
    :cond_1
    const-string v3, "NOTICE.html.gz"

    .line 149
    :cond_2
    const-string v7, "ro.config.license_path"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/system/etc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 153
    const-string v7, "SettingsLicenseActivity"

    const-string v8, "The system property for the license file is empty."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p0, v10}, Lcom/android/settings/SettingsLicenseActivity;->setVisible(Z)V

    .line 162
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 164
    new-instance v7, Lcom/android/settings/SettingsLicenseActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/SettingsLicenseActivity$1;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    iput-object v7, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 179
    const v7, 0x7f0b0529

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 180
    .local v6, "title":Ljava/lang/CharSequence;
    const v7, 0x7f0b052b

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 182
    .local v2, "msg":Ljava/lang/CharSequence;
    const/4 v7, 0x1

    invoke-static {p0, v6, v2, v7, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    .line 183
    .local v4, "pd":Landroid/app/ProgressDialog;
    invoke-virtual {v4, v10}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 184
    iput-object v4, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 187
    new-instance v5, Ljava/lang/Thread;

    new-instance v7, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;

    iget-object v8, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v0, v8}, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;-><init>(Lcom/android/settings/SettingsLicenseActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 188
    .local v5, "thread":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 199
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 200
    return-void
.end method
