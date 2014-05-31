.class public Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;
.super Landroid/app/AlertDialog;
.source "WifiP2pConfigurationDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field filter:Landroid/text/InputFilter;

.field private mAutoConnect:Landroid/widget/CheckBox;

.field private mAutoConnectText:Landroid/widget/TextView;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mDeviceBand:Landroid/widget/Spinner;

.field private mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

.field private mDeviceLimit:Landroid/widget/Spinner;

.field private mDeviceName:Landroid/widget/TextView;

.field private mDeviceTimeout:Landroid/widget/Spinner;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDeviceConfig;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mDevice"    # Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v0, "WifiP2pConfigurationDialog"

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->LOGTAG:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->filter:Landroid/text/InputFilter;

    .line 77
    sput-object p1, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    iget-object v1, p2, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceName:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method private initP2pSettings()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 169
    const/4 v1, 0x2

    .line 170
    .local v1, "p2pAgoBand":I
    const/16 v2, 0x8

    .line 171
    .local v2, "p2pAgoDeviceLimit":I
    const/4 v3, -0x1

    .line 172
    .local v3, "p2pAgoDeviceTimeout":I
    const/4 v4, 0x0

    .line 173
    .local v4, "p2pAutoConnectEnabled":I
    sget-object v6, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_p2p_configuration"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "deviceConfig":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 176
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "tokens":[Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 179
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 180
    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 181
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 184
    .end local v5    # "tokens":[Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceLimit:Landroid/widget/Spinner;

    sget-object v7, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07006c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 185
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceTimeout:Landroid/widget/Spinner;

    sget-object v7, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07006e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 186
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v6

    if-nez v6, :cond_1

    .line 187
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    sget-object v7, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07006a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 188
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 198
    :goto_1
    if-ne v4, v10, :cond_3

    .line 199
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 200
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnectText:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :goto_2
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceLimit:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 207
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceTimeout:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 208
    return-void

    .line 190
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v6

    if-ne v6, v11, :cond_2

    .line 191
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    invoke-virtual {v6, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 195
    :goto_3
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    invoke-virtual {v6, v9}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 196
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    invoke-virtual {v6, v9}, Landroid/widget/Spinner;->setClickable(Z)V

    goto :goto_1

    .line 193
    :cond_2
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    invoke-virtual {v6, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 202
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 182
    .restart local v5    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method private validateDeviceName()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 234
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 235
    .local v0, "utf8DeviceName":[B
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    const/16 v2, 0x16

    if-le v1, v2, :cond_1

    .line 236
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->validateDeviceName()V

    .line 231
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 227
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 211
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnectText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnectText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b9

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v2, 0x7f080211

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    .line 88
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v2, 0x7f080212

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceLimit:Landroid/widget/Spinner;

    .line 89
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v2, 0x7f080213

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceTimeout:Landroid/widget/Spinner;

    .line 90
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->setView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->setInverseBackgroundForced(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v2, 0x7f0801a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v2, 0x7f080210

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    new-array v2, v3, [Landroid/text/InputFilter;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->filter:Landroid/text/InputFilter;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v2, 0x7f080214

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    .line 100
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mView:Landroid/view/View;

    const v2, 0x7f080215

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnectText:Landroid/widget/TextView;

    .line 101
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnectText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    const-string v2, "wifip2p"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 104
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    sget-object v2, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 106
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_0

    .line 108
    const-string v1, "WifiP2pConfigurationDialog"

    const-string v2, "Failed to set up connection with wifi p2p service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 115
    :cond_0
    :goto_0
    const/4 v1, -0x1

    const v2, 0x7f0b039a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 147
    const/4 v1, -0x2

    const v2, 0x7f0b039c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$3;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 153
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->initP2pSettings()V

    .line 154
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 155
    return-void

    .line 112
    :cond_1
    const-string v1, "WifiP2pConfigurationDialog"

    const-string v2, "mWifiP2pManager is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceLimit:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceTimeout:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnectText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnectText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 224
    return-void
.end method
