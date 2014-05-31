.class public Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiEAPPasswordAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final EXTRA_EAP_INNER_METHOD_TYPE:Ljava/lang/String;

.field private final EXTRA_EAP_OUTER_METHOD_TYPE:Ljava/lang/String;

.field private final EXTRA_NETID:Ljava/lang/String;

.field private PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEAPInnerSecurity:Ljava/lang/String;

.field private mEAPOuterSecurity:Ljava/lang/String;

.field private mEapAnonymous:Landroid/widget/TextView;

.field private mEapCaCert:Landroid/widget/Spinner;

.field private mEapIdentity:Landroid/widget/TextView;

.field private mEapMethod:Landroid/widget/Spinner;

.field private mEapPhase2:Landroid/widget/Spinner;

.field private mEapUserCert:Landroid/widget/Spinner;

.field private mNetID:I

.field private mPassword:Landroid/widget/TextView;

.field private mPasswordText:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 54
    const-string v0, "EAP_OUTER_METHOD_TYPE"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->EXTRA_EAP_OUTER_METHOD_TYPE:Ljava/lang/String;

    .line 55
    const-string v0, "EAP_INNER_METHOD_TYPE"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->EXTRA_EAP_INNER_METHOD_TYPE:Ljava/lang/String;

    .line 56
    const-string v0, "NETID"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->EXTRA_NETID:Ljava/lang/String;

    .line 57
    const-string v0, "unspecified"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->unspecifiedCert:Ljava/lang/String;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400b7

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    .line 151
    iput-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapMethod:Landroid/widget/Spinner;

    .line 152
    iput-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapPhase2:Landroid/widget/Spinner;

    .line 153
    iput-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapCaCert:Landroid/widget/Spinner;

    .line 154
    iput-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapUserCert:Landroid/widget/Spinner;

    .line 155
    iput-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapIdentity:Landroid/widget/TextView;

    .line 156
    iput-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapAnonymous:Landroid/widget/TextView;

    .line 157
    iput-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPasswordText:Landroid/widget/TextView;

    .line 158
    iput-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    .line 160
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 161
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 164
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 166
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 169
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 170
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v4, 0x7f0801e6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapMethod:Landroid/widget/Spinner;

    .line 171
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v4, 0x7f0801e7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapPhase2:Landroid/widget/Spinner;

    .line 172
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v4, 0x7f0801e8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapCaCert:Landroid/widget/Spinner;

    .line 173
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v4, 0x7f0801e9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapUserCert:Landroid/widget/Spinner;

    .line 174
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v4, 0x7f0801eb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapAnonymous:Landroid/widget/TextView;

    .line 175
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v4, 0x7f0801e1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPasswordText:Landroid/widget/TextView;

    .line 176
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v4, 0x7f0801bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    .line 177
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v4, 0x7f0801d6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapCaCert:Landroid/widget/Spinner;

    const-string v4, "CACERT_"

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapUserCert:Landroid/widget/Spinner;

    const-string v4, "USRPKEY_"

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPOuterSecurity:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 181
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPOuterSecurity:Ljava/lang/String;

    const-string v4, "GENERIC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v4, 0x7f08020b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 184
    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 185
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 187
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPOuterSecurity:Ljava/lang/String;

    const-string v4, "TLS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 188
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v4, 0x7f08020c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v4, 0x7f08020e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapIdentity:Landroid/widget/TextView;

    .line 190
    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 191
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 204
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPInnerSecurity:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 205
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPInnerSecurity:Ljava/lang/String;

    const-string v4, "MSCHAPv2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPInnerSecurity:Ljava/lang/String;

    const-string v4, "GTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPInnerSecurity:Ljava/lang/String;

    const-string v4, "GENERIC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 207
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v4, 0x7f08020f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v4, 0x7f0801ea

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapIdentity:Landroid/widget/TextView;

    .line 209
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPInnerSecurity:Ljava/lang/String;

    const-string v4, "MSCHAPv2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 210
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 213
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapIdentity:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapAnonymous:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_3
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 218
    .local v0, "eapMethod":I
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    .line 219
    .local v2, "phase2Method":I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapMethod:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 220
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->showEapFieldsByMethod(I)V

    .line 221
    packed-switch v0, :pswitch_data_0

    .line 239
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapPhase2:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 242
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    return-object v3

    .line 194
    .end local v0    # "eapMethod":I
    .end local v2    # "phase2Method":I
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPOuterSecurity:Ljava/lang/String;

    const-string v4, "PEAP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 195
    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 196
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPOuterSecurity:Ljava/lang/String;

    const-string v4, "TTLS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 197
    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 198
    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPOuterSecurity:Ljava/lang/String;

    const-string v4, "PWD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto/16 :goto_0

    .line 212
    :cond_7
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_1

    .line 223
    .restart local v0    # "eapMethod":I
    .restart local v2    # "phase2Method":I
    :pswitch_0
    packed-switch v2, :pswitch_data_1

    .line 234
    :pswitch_1
    const-string v3, "WifiEAPPasswordAlertActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid phase 2 method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 225
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapPhase2:Landroid/widget/Spinner;

    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 228
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapPhase2:Landroid/widget/Spinner;

    invoke-virtual {v3, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 231
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapPhase2:Landroid/widget/Spinner;

    invoke-virtual {v3, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 223
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 245
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-virtual {v4, p2, v5}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "certs":[Ljava/lang/String;
    const v4, 0x7f0b037c

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "unspecified":Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 248
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2    # "certs":[Ljava/lang/String;
    aput-object v3, v2, v6

    .line 256
    .restart local v2    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 258
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 259
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 260
    return-void

    .line 250
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 251
    .local v1, "array":[Ljava/lang/String;
    aput-object v3, v1, v6

    .line 252
    array-length v4, v2

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    move-object v2, v1

    goto :goto_0
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 467
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 468
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

    .line 470
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 472
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapAnonymous:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v1, 0x7f0801e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapCaCert:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 367
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 380
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v1, 0x7f0801bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v1, 0x7f0801d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 383
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v1, 0x7f0801e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapPhase2:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 362
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 269
    if-eqz p2, :cond_0

    .line 270
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 271
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 272
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 278
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 271
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v1, 0x7f0801e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapUserCert:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 372
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 5
    .param p1, "eapMethod"    # I

    .prologue
    const v4, 0x7f0801eb

    const v3, 0x7f0801e7

    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v1, 0x7f0801e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v1, 0x7f0801ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v1, 0x7f0801e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v1, 0x7f0801bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v1, 0x7f0801d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    packed-switch p1, :pswitch_data_0

    .line 358
    :goto_0
    return-void

    .line 323
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->setPasswordInvisible()V

    .line 326
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->setPhase2Invisible()V

    .line 327
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->setCaCertInvisible()V

    .line 328
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->setAnonymousIdentInvisible()V

    .line 329
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->setUserCertInvisible()V

    goto :goto_0

    .line 332
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    const v1, 0x7f0801e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->setPhase2Invisible()V

    .line 334
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->setAnonymousIdentInvisible()V

    .line 335
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->setPasswordInvisible()V

    goto :goto_0

    .line 339
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 341
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapPhase2:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->setUserCertInvisible()V

    goto :goto_0

    .line 349
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 351
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapPhase2:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 355
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->setUserCertInvisible()V

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 399
    if-ne p2, v8, :cond_5

    .line 401
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 402
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    .line 403
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapMethod:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 404
    .local v2, "eapMethod":I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapPhase2:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 405
    .local v4, "phase2Method":I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 406
    packed-switch v2, :pswitch_data_0

    .line 428
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 431
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapCaCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    .local v0, "caCert":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 433
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, ""

    .line 434
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 436
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 437
    .local v1, "clientCert":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 438
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v1, ""

    .line 439
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 441
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapIdentity:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 442
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEapAnonymous:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 445
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 448
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 449
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 456
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 457
    .local v3, "lNetId":I
    if-eq v3, v8, :cond_7

    .line 458
    const-string v5, "WifiEAPPasswordAlertActivity"

    const-string v6, "Added new network successfully -- commiting to supplicant."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3, v9}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 460
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 465
    .end local v0    # "caCert":Ljava/lang/String;
    .end local v1    # "clientCert":Ljava/lang/String;
    .end local v2    # "eapMethod":I
    .end local v3    # "lNetId":I
    .end local v4    # "phase2Method":I
    :cond_5
    :goto_2
    return-void

    .line 411
    .restart local v2    # "eapMethod":I
    .restart local v4    # "phase2Method":I
    :pswitch_0
    packed-switch v4, :pswitch_data_1

    .line 422
    const-string v5, "WifiEAPPasswordAlertActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown phase2 method"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 413
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_0

    .line 416
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_0

    .line 419
    :pswitch_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_0

    .line 453
    .restart local v0    # "caCert":Ljava/lang/String;
    .restart local v1    # "clientCert":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto :goto_1

    .line 462
    .restart local v3    # "lNetId":I
    :cond_7
    const-string v5, "WifiEAPPasswordAlertActivity"

    const-string v6, "Error adding network"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 411
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mPassword:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 285
    return-void

    .line 281
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 84
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 87
    .local v5, "p":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 88
    .local v3, "launchIntent":Landroid/content/Intent;
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 90
    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_2

    .line 91
    :cond_0
    const-string v7, "WifiEAPPasswordAlertActivity"

    const-string v8, "Bad launch intent - finishing activity!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->finish()V

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    const-string v7, "NETID"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mNetID:I

    .line 96
    iget-object v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 98
    .local v6, "wifiConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v7, "EAP_OUTER_METHOD_TYPE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPOuterSecurity:Ljava/lang/String;

    .line 99
    const-string v7, "EAP_INNER_METHOD_TYPE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPInnerSecurity:Ljava/lang/String;

    .line 100
    iput-object v11, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 101
    const v7, 0x7f0b037c

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->unspecifiedCert:Ljava/lang/String;

    .line 106
    if-eqz v6, :cond_4

    .line 107
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 108
    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v8, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mNetID:I

    if-ne v7, v8, :cond_3

    .line 109
    iput-object v0, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 115
    .end local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPOuterSecurity:Ljava/lang/String;

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mEAPInnerSecurity:Ljava/lang/String;

    if-nez v7, :cond_6

    .line 116
    :cond_5
    const-string v7, "WifiEAPPasswordAlertActivity"

    const-string v8, "Bad launch mWifiConfiguration is null OR mEAPOuterSecurity and mEAPInnerSecurity are null - exiting"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->finish()V

    goto :goto_0

    .line 120
    :cond_6
    iget-object v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v8, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mNetID:I

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 121
    const-string v7, "WifiEAPPasswordAlertActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to remove network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mNetID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object v11, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->finish()V

    goto/16 :goto_0

    .line 127
    :cond_7
    iget-object v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 129
    const v7, 0x1080027

    iput v7, v5, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 131
    iget-object v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 132
    iput-boolean v9, v5, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 133
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->createView()Landroid/view/View;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 136
    const v7, 0x7f0b0396

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 137
    iput-object p0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 138
    const v7, 0x7f0b0234

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 139
    iput-object p0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->setupAlert()V

    .line 141
    iget-object v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v7, v10}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 142
    .local v4, "okButton":Landroid/widget/Button;
    if-eqz v4, :cond_8

    .line 143
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    :cond_8
    iget-object v7, p0, Lcom/android/settings/wifi/WifiEAPPasswordAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 145
    .local v1, "cancelButton":Landroid/widget/Button;
    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method
