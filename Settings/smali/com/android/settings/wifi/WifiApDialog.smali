.class public Lcom/android/settings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static mFiveGhzEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private mBroadcastSsid:Landroid/widget/CheckBox;

.field private mChannel:Landroid/widget/Spinner;

.field private mChannelIndexTemp:I

.field private mChannelValTemp:I

.field private mDhcpStartAddress:Landroid/widget/EditText;

.field private mInitConfig:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityTypeIndex:I

.field private mSsid:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiApDialog;->mFiveGhzEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p4, "firstLaunch"    # Z

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v0, "WifiApDialog"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->LOGTAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 117
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 118
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 119
    if-eqz p3, :cond_0

    .line 120
    invoke-static {p3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 122
    :cond_0
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiApDialog;->mInitConfig:Z

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApDialog;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDhcpAddressValid()Z
    .locals 13

    .prologue
    const/16 v12, 0xff

    const/4 v11, 0x0

    .line 289
    const/4 v7, 0x0

    .line 291
    .local v7, "retVal":Z
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mDhcpStartAddress:Landroid/widget/EditText;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mDhcpStartAddress:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "(\\d{1,3}\\.){3}\\d{1,3}"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 293
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mDhcpStartAddress:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "ips":[Ljava/lang/String;
    const/4 v7, 0x1

    .line 296
    aget-object v9, v5, v11

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0xdf

    if-gt v9, v10, :cond_0

    aget-object v9, v5, v11

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x7f

    if-eq v9, v10, :cond_0

    aget-object v9, v5, v11

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    .line 298
    :cond_0
    const-string v9, "WifiApDialog"

    const-string v10, "Bad Ip field Multicast/IANA-Loopback Reserved"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v7, 0x0

    move v8, v7

    .line 332
    .end local v5    # "ips":[Ljava/lang/String;
    .end local v7    # "retVal":Z
    .local v8, "retVal":I
    :goto_0
    return v8

    .line 304
    .end local v8    # "retVal":I
    .restart local v5    # "ips":[Ljava/lang/String;
    .restart local v7    # "retVal":Z
    :cond_1
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v4, v0, v3

    .line 306
    .local v4, "ip":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-le v9, v12, :cond_2

    .line 307
    const-string v9, "WifiApDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad Ip field entry out of bound- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    const/4 v7, 0x0

    .line 315
    :cond_2
    :goto_2
    if-nez v7, :cond_6

    .line 319
    .end local v4    # "ip":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_5

    .line 320
    const/4 v9, 0x3

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 321
    .local v2, "endIp":I
    const/4 v9, 0x2

    if-ge v2, v9, :cond_4

    .line 322
    const-string v9, "WifiApDialog"

    const-string v10, "BAd Ip - .1 is reserved for gateway"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v7, 0x0

    .line 325
    :cond_4
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    if-nez v9, :cond_7

    const/16 v9, 0xa

    :goto_3
    add-int/2addr v2, v9

    .line 326
    if-le v2, v12, :cond_5

    .line 327
    const-string v9, "WifiApDialog"

    const-string v10, "BAd Ip - startIp too small to accommodate device restrictions"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v7, 0x0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "endIp":I
    .end local v3    # "i$":I
    .end local v5    # "ips":[Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_5
    move v8, v7

    .line 332
    .restart local v8    # "retVal":I
    goto :goto_0

    .line 310
    .end local v8    # "retVal":I
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "ip":Ljava/lang/String;
    .restart local v5    # "ips":[Ljava/lang/String;
    .restart local v6    # "len$":I
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v9, "WifiApDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad Ip field entry - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v7, 0x0

    goto :goto_2

    .line 304
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 325
    .end local v4    # "ip":Ljava/lang/String;
    .restart local v2    # "endIp":I
    :cond_7
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    goto :goto_3
.end method

.method private showSecurityFields()V
    .locals 2

    .prologue
    const v1, 0x7f0801d5

    .line 404
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 339
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 340
    .local v0, "utf8Ssid":[B
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_2

    array-length v1, v0

    const/16 v2, 0x20

    if-gt v1, v2, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->isDhcpAddressValid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 344
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 371
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 367
    return-void
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 141
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 142
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 143
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 144
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 145
    const-string v2, ""

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 155
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannelValTemp:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    .line 157
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannelIndexTemp:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channelIndex:I

    .line 160
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mBroadcastSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getDhcpConfig()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    .line 163
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 177
    const/4 v0, 0x0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_1
    return-object v0

    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    move v2, v3

    .line 160
    goto :goto_0

    .line 165
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 169
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 170
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 171
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDhcpConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mDhcpStartAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewConfig()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 90
    .local v1, "mOldConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 91
    .local v0, "mNewConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->channelIndex:I

    if-eqz v4, :cond_0

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    if-ne v4, v5, :cond_3

    :cond_0
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->channelIndex:I

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->channelIndex:I

    if-ne v4, v5, :cond_3

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-ne v4, v5, :cond_3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    :cond_1
    :goto_0
    return v2

    .line 101
    :cond_2
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 102
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    move v2, v3

    .line 108
    goto :goto_0

    :cond_4
    move v2, v3

    .line 106
    goto :goto_0
.end method

.method public hotSpotRestartDialog()V
    .locals 3

    .prologue
    .line 414
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$1;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    .line 429
    .local v0, "hotspotRestartWarningListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    .local v1, "mHotspotRestartAlertDlg":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b00a8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 431
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 432
    const v2, 0x7f0b00a7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 433
    const v2, 0x7f0b00a9

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    const v2, 0x7f0b00aa

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 435
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 436
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mBroadcastSsid:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 361
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 356
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    :goto_1
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v9, 0x7f0400ae

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 184
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0801d4

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    .line 185
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0801d8

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    .line 187
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 188
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 191
    sget-object v6, Lcom/android/settings/wifi/WifiApDialog;->mFiveGhzEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 197
    .local v3, "context":Landroid/content/Context;
    const-string v6, "wifi"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 200
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getRange()Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "str":Ljava/lang/String;
    const-string v6, "WifiApDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Channel list"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, v3, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 205
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    if-eqz v5, :cond_0

    .line 207
    sget-object v6, Lcom/android/settings/wifi/WifiApDialog;->mFiveGhzEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 209
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "arrayChannelList":[Ljava/lang/String;
    array-length v2, v1

    .line 213
    .local v2, "channels":I
    const-string v6, "WifiApDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ChannelList length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f070075

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v8

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 217
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 218
    aget-object v6, v1, v4

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 217
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "arrayChannelList":[Ljava/lang/String;
    .end local v2    # "channels":I
    .end local v4    # "i":I
    :cond_0
    sget-object v6, Lcom/android/settings/wifi/WifiApDialog;->mFiveGhzEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 224
    const-string v6, "WifiApDialog"

    const-string v9, "ChannelList returned from Driver is NULL,Falling to default 2.4GHZ"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/16 v2, 0xb

    .line 226
    .restart local v2    # "channels":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 227
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f070076

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 232
    :cond_1
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 233
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 236
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mInitConfig:Z

    if-ne v6, v7, :cond_4

    .line 237
    const v6, 0x7f0b00b3

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    .line 241
    :goto_2
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0801a7

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0801d7

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0801d2

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    .line 244
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0801bb

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 245
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0801d9

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mDhcpStartAddress:Landroid/widget/EditText;

    .line 246
    const/4 v6, -0x1

    const v9, 0x7f0b039a

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v9, v10}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 247
    const/4 v6, -0x2

    const v9, 0x7f0b039c

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v9, v10}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 249
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v9, 0x7f0801d3

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mBroadcastSsid:Landroid/widget/CheckBox;

    .line 250
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mBroadcastSsid:Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v6, :cond_3

    .line 253
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    iget v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v6, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 255
    iget v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v6, v7, :cond_2

    .line 256
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_2
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApDialog;->mBroadcastSsid:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v6, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v6, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 260
    sget-object v6, Lcom/android/settings/wifi/WifiApDialog;->mFiveGhzEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 261
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->channelIndex:I

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 271
    :goto_4
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mDhcpStartAddress:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 275
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 276
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mDhcpStartAddress:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v7, 0x7f0801d6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 279
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 281
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 283
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 284
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 285
    return-void

    .line 239
    :cond_4
    const v6, 0x7f0b03cf

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    goto/16 :goto_2

    :cond_5
    move v6, v8

    .line 258
    goto :goto_3

    .line 263
    :cond_6
    const-string v6, "WifiApDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiConfig.frequency"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v8, v8, Landroid/net/wifi/WifiConfiguration;->frequency:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->frequency:I

    const/16 v7, 0xb

    if-le v6, v7, :cond_7

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->updateDefaultFreqAndRestart()V

    goto :goto_4

    .line 267
    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->frequency:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 376
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 378
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 379
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 380
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 383
    sget-object v0, Lcom/android/settings/wifi/WifiApDialog;->mFiveGhzEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannelIndexTemp:I

    .line 386
    if-eqz p3, :cond_0

    .line 387
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannelValTemp:I

    goto :goto_0

    .line 391
    :cond_2
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannelValTemp:I

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
    .line 401
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 364
    return-void
.end method

.method public prepareToDisplay(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const v6, 0x7f0801d6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 449
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mInitConfig:Z

    if-ne v1, v2, :cond_1

    .line 450
    const v1, 0x7f0b00b3

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    .line 453
    :goto_0
    if-eqz p2, :cond_7

    .line 454
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 455
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 459
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 461
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v1, :pswitch_data_0

    .line 472
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    const/16 v4, 0xa5

    if-gt v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    if-gtz v1, :cond_3

    .line 475
    :cond_0
    sget-object v1, Lcom/android/settings/wifi/WifiApDialog;->mFiveGhzEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 476
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 481
    :goto_2
    const-string v1, "WifiApDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recieved bad saved channel number == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". will switch to default!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mBroadcastSsid:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v1, :cond_6

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 506
    :goto_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mDhcpStartAddress:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mInitConfig:Z

    if-ne v1, v2, :cond_9

    .line 508
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 512
    :goto_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApDialog;->onClick(Landroid/view/View;)V

    .line 513
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 514
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 515
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mInitConfig:Z

    .line 516
    return-void

    .line 452
    :cond_1
    const v1, 0x7f0b03cf

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    goto/16 :goto_0

    .line 463
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 466
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 467
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_1

    .line 478
    .end local v0    # "str":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 483
    :cond_3
    sget-object v1, Lcom/android/settings/wifi/WifiApDialog;->mFiveGhzEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 484
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->channelIndex:I

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 486
    :cond_4
    const-string v1, "WifiApDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mWifiConfig.frequency "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    const/16 v4, 0xb

    if-le v1, v4, :cond_5

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->updateDefaultFreqAndRestart()V

    goto/16 :goto_3

    .line 490
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->frequency:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    :cond_6
    move v1, v3

    .line 495
    goto/16 :goto_4

    .line 498
    :cond_7
    sget-object v1, Lcom/android/settings/wifi/WifiApDialog;->mFiveGhzEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 499
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 504
    :goto_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mBroadcastSsid:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    .line 501
    :cond_8
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_7

    .line 510
    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_6

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateDefaultFreqAndRestart()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x6

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    .line 440
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x5

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->channelIndex:I

    .line 441
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->hotSpotRestartDialog()V

    .line 443
    return-void
.end method
