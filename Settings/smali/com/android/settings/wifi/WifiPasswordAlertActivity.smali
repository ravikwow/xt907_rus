.class public Lcom/android/settings/wifi/WifiPasswordAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiPasswordAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final EXTRA_NETID:Ljava/lang/String;

.field private isOnClick:Z

.field private mNetID:I

.field private mPassword:Landroid/widget/TextView;

.field private mPasswordText:Landroid/widget/TextView;

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 52
    const-string v0, "NET_ID"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->EXTRA_NETID:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->isOnClick:Z

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040097

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, "mView":Landroid/view/View;
    iput-object v3, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mPasswordText:Landroid/widget/TextView;

    .line 176
    iput-object v3, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    .line 177
    const v1, 0x7f080186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    .line 178
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    const v1, 0x7f0801af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mPasswordText:Landroid/widget/TextView;

    .line 180
    const v1, 0x7f0801a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mShowPassword:Landroid/widget/CheckBox;

    .line 181
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    return-object v0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 252
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 253
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 255
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 257
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private validate()V
    .locals 3

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 166
    .local v0, "okButton":Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->validate()V

    .line 187
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 191
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "WifiPasswordAlertActivity"

    const-string v1, "User pressed Back Key. Destroying the password alert activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 158
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v11, 0x22

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 205
    const-string v6, "WifiPasswordAlertActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick() --  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-ne p2, v9, :cond_5

    .line 210
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 211
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "password":Ljava/lang/String;
    const-string v6, "[0-9A-Fa-f]{64}"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iput-object v5, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 218
    .end local v5    # "password":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    .line 220
    const/4 v4, 0x0

    .line 221
    .local v4, "mLastPriority":I
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 222
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_3

    .line 223
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 224
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v6, v4, :cond_1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    const v7, 0x1869c

    if-ge v6, v7, :cond_1

    .line 225
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_1

    .line 215
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "mLastPriority":I
    .restart local v5    # "password":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 229
    .end local v5    # "password":Ljava/lang/String;
    .restart local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v4    # "mLastPriority":I
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    add-int/lit8 v4, v4, 0x1

    iput v4, v6, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 231
    const-string v6, "WifiPasswordAlertActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiConfiguration.eapRetryCount :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 233
    .local v3, "lNetId":I
    if-eq v3, v9, :cond_4

    .line 234
    const-string v6, "WifiPasswordAlertActivity"

    const-string v7, "Added new network successfully -- commiting to supplicant."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iput v3, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 236
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 237
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 238
    const-string v6, "WifiPasswordAlertActivity"

    const-string v7, "Enabled the network."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "lNetId":I
    .end local v4    # "mLastPriority":I
    :goto_2
    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->isOnClick:Z

    .line 249
    return-void

    .line 240
    .restart local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v3    # "lNetId":I
    .restart local v4    # "mLastPriority":I
    :cond_4
    const-string v6, "WifiPasswordAlertActivity"

    const-string v7, "Error adding network"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 245
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3    # "lNetId":I
    .end local v4    # "mLastPriority":I
    :cond_5
    sput-boolean v10, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 202
    return-void

    .line 198
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 63
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    iget-object v4, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 66
    .local v4, "p":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 67
    .local v3, "launchIntent":Landroid/content/Intent;
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 68
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_2

    .line 69
    :cond_0
    const-string v6, "WifiPasswordAlertActivity"

    const-string v7, "Bad launch intent - finishing activity!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    const-string v6, "NET_ID"

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mNetID:I

    .line 74
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 75
    .local v5, "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iput-object v10, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 76
    if-eqz v5, :cond_4

    .line 77
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 78
    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v7, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mNetID:I

    if-ne v6, v7, :cond_3

    .line 79
    iput-object v0, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 84
    .end local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-nez v6, :cond_5

    .line 85
    const-string v6, "WifiPasswordAlertActivity"

    const-string v7, "Bad launch mWifiConfiguration is null - exiting"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 90
    :cond_5
    const-string v6, "WifiPasswordAlertActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "network eapRetry count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_6

    .line 93
    const-string v6, "WifiPasswordAlertActivity"

    const-string v7, "already authenticated with correct password"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 98
    :cond_6
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v7, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mNetID:I

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 99
    const-string v6, "WifiPasswordAlertActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to remov network "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mNetID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-object v10, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 104
    :cond_7
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->isOnClick:Z

    .line 105
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 106
    const v6, 0x1080027

    iput v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 107
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 108
    iput-boolean v9, v4, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 109
    iget-object v6, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->eapRetryCount:I

    const/4 v7, 0x5

    if-lt v6, v7, :cond_8

    .line 110
    const v6, 0x7f0b0092

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 111
    const v6, 0x7f0b0090

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 112
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 114
    iget-object v6, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v7, -0x3

    invoke-virtual {v6, v7}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 116
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->createView()Landroid/view/View;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 119
    const v6, 0x7f0b034d

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 121
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 123
    const v6, 0x7f0b021f

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 125
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 127
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->validate()V

    .line 129
    iget-object v6, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 131
    .local v1, "cancelButton":Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "WifiPasswordAlertActivity"

    const-string v1, "onPause password alert activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiPasswordAlertActivity;->isOnClick:Z

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    .line 142
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 144
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 195
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "WifiPasswordAlertActivity"

    const-string v1, "User pressed Home key, Destroying the password alert activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 151
    return-void
.end method
