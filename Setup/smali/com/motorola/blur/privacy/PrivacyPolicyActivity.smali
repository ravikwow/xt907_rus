.class public Lcom/motorola/blur/privacy/PrivacyPolicyActivity;
.super Landroid/preference/PreferenceActivity;
.source "PrivacyPolicyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/privacy/PrivacyPolicyActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field public static final DISPLAYED_ONCE:Ljava/lang/String; = "DISPLAYED_ONCE"

.field private static final ICICLE_TOS_CHECKED:Ljava/lang/String; = "ICICLE_TOS_CHECKED"

.field private static final ICICLE_WAS_TOS_ACCEPTED:Ljava/lang/String; = "ICICLE_WAS_TOS_ACCEPTED"

.field public static final INTENT_EXPLICIT_TOS_ACCEPTED:Ljava/lang/String; = "com.motorola.blur.setup.EXPLICIT_TOS_ACCEPTED"

.field public static final INTENT_EXTRA_INITIAL_SETUP:Ljava/lang/String; = "INITIAL_SETUP"

.field public static final PICK_WIFI:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PrivacyPolicyActivity"

.field public static final TOS_ACCEPTED:Ljava/lang/String; = "TOS_ACCEPTED"


# instance fields
.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListenerCancelBtn:Landroid/view/View$OnClickListener;

.field private mListenerOkBtn:Landroid/view/View$OnClickListener;

.field private mListenerTosCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLogoTruste:Landroid/view/View;

.field private mOkButton:Landroid/widget/Button;

.field private mTosChecked:Z

.field private mWasTosAccepted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mLogoTruste:Landroid/view/View;

    .line 59
    iput-object v1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mOkButton:Landroid/widget/Button;

    .line 60
    iput-boolean v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mTosChecked:Z

    .line 61
    iput-boolean v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mWasTosAccepted:Z

    .line 242
    new-instance v0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$3;-><init>(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mListenerTosCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 251
    new-instance v0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$4;

    invoke-direct {v0, p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$4;-><init>(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mListenerOkBtn:Landroid/view/View$OnClickListener;

    .line 264
    new-instance v0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$5;

    invoke-direct {v0, p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$5;-><init>(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mListenerCancelBtn:Landroid/view/View$OnClickListener;

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->launchTrusteLink()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mTosChecked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/privacy/PrivacyPolicyActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mTosChecked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->setTosAccepted(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->dismissReminder()V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mListenerTosCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method private dismissReminder()V
    .locals 3

    .prologue
    .line 224
    const-string v1, "PrivacyPolicyActivity"

    const-string v2, "dismissNotification....."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.action.CANCAL_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "cancalNotification":Landroid/content/Intent;
    const-string v1, "NOTIFICATION_ID"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 232
    new-instance v1, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$2;

    invoke-direct {v1, p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$2;-><init>(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 240
    return-void
.end method

.method public static hasDisplayedOnce(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 99
    const-class v3, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 101
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v3, "DISPLAYED_ONCE"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 102
    .local v0, "displayed":Z
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->isTosAccepted(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isTosAccepted(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 75
    .local v0, "bExplicitTosAcceptRequired":Z
    if-nez v0, :cond_0

    .line 77
    const/4 v2, 0x1

    .line 83
    :goto_0
    return v2

    .line 81
    :cond_0
    const-class v2, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "TOS_ACCEPTED"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method private launchTrusteLink()V
    .locals 6

    .prologue
    .line 357
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 358
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 359
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 360
    :cond_0
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 361
    .local v3, "wm":Landroid/net/wifi/WifiManager;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 362
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 367
    .end local v3    # "wm":Landroid/net/wifi/WifiManager;
    :goto_0
    return-void

    .line 364
    :cond_1
    const v4, 0x7f0800f2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 365
    .local v2, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static setDisplayedOnce(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const-class v1, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "DISPLAYED_ONCE"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    return-void
.end method

.method private static setTosAccepted(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const-class v1, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "TOS_ACCEPTED"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.blur.setup.EXPLICIT_TOS_ACCEPTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 274
    iput-object p1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mHeaders:Ljava/util/List;

    .line 275
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 124
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 126
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 128
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 131
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    if-eqz p1, :cond_3

    .line 134
    const-string v4, "ICICLE_TOS_CHECKED"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mTosChecked:Z

    .line 135
    const-string v4, "ICICLE_WAS_TOS_ACCEPTED"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mWasTosAccepted:Z

    .line 140
    :goto_0
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 143
    const v4, 0x7f030015

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 145
    const v4, 0x7f0800c0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 148
    iget-object v4, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mLogoTruste:Landroid/view/View;

    .line 149
    iget-object v4, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mLogoTruste:Landroid/view/View;

    const v5, 0x7f0c0035

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 150
    .local v3, "logoTruste":Landroid/widget/ImageView;
    new-instance v4, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$1;

    invoke-direct {v4, p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$1;-><init>(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v4, 0x7f0c0003

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mOkButton:Landroid/widget/Button;

    .line 158
    iget-object v4, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mOkButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mListenerOkBtn:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v4, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mOkButton:Landroid/widget/Button;

    invoke-static {p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->isTosAccepted(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "initial_setup"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 163
    .local v1, "bInitialSetup":Z
    if-eqz v1, :cond_1

    .line 164
    iget-object v4, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mOkButton:Landroid/widget/Button;

    const v5, 0x7f080011

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 166
    const/high16 v4, 0x7f0c0000

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 167
    .local v2, "backButton":Landroid/widget/Button;
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v4, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mListenerCancelBtn:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v4, Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;

    invoke-direct {v4, p0, v7}, Lcom/motorola/blur/setup/SetupUtility$hideNavBarButtonTask;-><init>(Landroid/app/Activity;Z)V

    new-array v5, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 175
    .end local v2    # "backButton":Landroid/widget/Button;
    :cond_1
    invoke-static {p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->isTosAccepted(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    invoke-direct {p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->dismissReminder()V

    .line 180
    :cond_2
    invoke-static {p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->setDisplayedOnce(Landroid/content/Context;)V

    .line 181
    return-void

    .line 137
    .end local v1    # "bInitialSetup":Z
    .end local v3    # "logoTruste":Landroid/widget/ImageView;
    :cond_3
    invoke-static {p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->isTosAccepted(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mWasTosAccepted:Z

    iput-boolean v4, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mTosChecked:Z

    goto/16 :goto_0
.end method

.method public onIsMultiPane()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 198
    iget-boolean v0, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mWasTosAccepted:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->isTosAccepted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 205
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 211
    const-string v0, "ICICLE_TOS_CHECKED"

    iget-boolean v1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mTosChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    const-string v0, "ICICLE_WAS_TOS_ACCEPTED"

    iget-boolean v1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mWasTosAccepted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/16 v1, 0x10

    const/4 v4, -0x2

    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mLogoTruste:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 191
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 284
    iget-object v1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mHeaders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mHeaders:Ljava/util/List;

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 287
    iget-object v2, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$HeaderAdapter;

    iget-object v2, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mHeaders:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$HeaderAdapter;-><init>(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;Landroid/app/Activity;Ljava/util/List;)V

    invoke-super {p0, v1}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 293
    return-void
.end method
