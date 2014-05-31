.class public Lcom/motorola/settings/VzwWifiEnabler;
.super Lcom/android/settings/wifi/WifiEnabler;
.source "VzwWifiEnabler.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/settings/VzwWifiEnabler;->mTextView:Landroid/widget/TextView;

    .line 27
    iput-object p1, p0, Lcom/motorola/settings/VzwWifiEnabler;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private getWifiSummary()Ljava/lang/CharSequence;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 49
    iget-object v9, p0, Lcom/motorola/settings/VzwWifiEnabler;->mContext:Landroid/content/Context;

    const v10, 0x7f0b006b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "summary":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/motorola/settings/VzwWifiEnabler;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 52
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    iget-object v9, p0, Lcom/motorola/settings/VzwWifiEnabler;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 53
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    if-eqz v6, :cond_0

    .line 54
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 55
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_1

    move v0, v7

    .line 56
    .local v0, "connected":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 58
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "ssid":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 61
    iget-object v9, p0, Lcom/motorola/settings/VzwWifiEnabler;->mContext:Landroid/content/Context;

    const v10, 0x7f0b006a

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-virtual {v9, v10, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .end local v0    # "connected":Z
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "ssid":Ljava/lang/String;
    :cond_0
    return-object v5

    .restart local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    move v0, v8

    .line 55
    goto :goto_0
.end method

.method private updateTextView()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/settings/VzwWifiEnabler;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/motorola/settings/VzwWifiEnabler;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/motorola/settings/VzwWifiEnabler;->getWifiSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/motorola/settings/VzwWifiEnabler;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method protected handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    .line 38
    invoke-direct {p0}, Lcom/motorola/settings/VzwWifiEnabler;->updateTextView()V

    .line 39
    return-void
.end method

.method public setSummaryView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/motorola/settings/VzwWifiEnabler;->mTextView:Landroid/widget/TextView;

    .line 32
    invoke-direct {p0}, Lcom/motorola/settings/VzwWifiEnabler;->updateTextView()V

    .line 33
    return-void
.end method
