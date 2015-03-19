.class public final Lcom/android/settings/wifi/WifiApDefaults;
.super Ljava/lang/Object;
.source "WifiApDefaults.java"


# static fields
.field public static UNKNOWN_STA_NAME:Ljava/lang/String;

.field private static mIsdefaultloaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "Unknown"

    sput-object v0, Lcom/android/settings/wifi/WifiApDefaults;->UNKNOWN_STA_NAME:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiApDefaults;->mIsdefaultloaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateKey(I)Ljava/lang/String;
    .locals 5
    .param p0, "keyLen"    # I

    .prologue
    .line 142
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 143
    .local v2, "rand":Ljava/util/Random;
    const-string v1, ""

    .line 144
    .local v1, "key":Ljava/lang/String;
    move v0, p0

    .line 145
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_0

    .line 146
    add-int/lit8 v0, v0, -0x1

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 149
    :cond_0
    return-object v1
.end method

.method public static loadDefaultWifiConfig(Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0x2327

    const/4 v8, 0x4

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 98
    const-string v0, ""

    .line 100
    .local v0, "carrier":Ljava/lang/String;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 103
    .local v2, "rand":Ljava/util/Random;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040543

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "model":Ljava/lang/String;
    const-string v4, "Mobile"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 106
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 109
    :cond_0
    const-string v4, "WifiApDefaults"

    const-string v5, "Loading default configuration"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 112
    .local v3, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    sget-object v4, Lcom/motorola/os/Build;->CUSTOMERID:Ljava/lang/String;

    const-string v5, "verizon"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 113
    const-string v0, "Verizon"

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 120
    :goto_0
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v8}, Ljava/util/BitSet;->set(I)V

    .line 123
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 126
    invoke-static {v7}, Lcom/android/settings/wifi/WifiApDefaults;->generateKey(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 129
    :cond_1
    iput v6, v3, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    .line 130
    iput v7, v3, Landroid/net/wifi/WifiConfiguration;->frequency:I

    .line 131
    iput v7, v3, Landroid/net/wifi/WifiConfiguration;->channelIndex:I

    .line 132
    iput-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 133
    const-string v4, "192.168.43.1"

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->wifi_ap_gateway:Ljava/lang/String;

    .line 134
    const-string v4, "192.168.43.2"

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    .line 135
    const-string v4, "192.168.43.254"

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->dhcp_end_addr:Ljava/lang/String;

    .line 137
    return-object v3

    .line 117
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
