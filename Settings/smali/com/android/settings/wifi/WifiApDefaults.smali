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
    .line 73
    const-string v0, "Unknown"

    sput-object v0, Lcom/android/settings/wifi/WifiApDefaults;->UNKNOWN_STA_NAME:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiApDefaults;->mIsdefaultloaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateKey(I)Ljava/lang/String;
    .locals 5
    .param p0, "keyLen"    # I

    .prologue
    .line 168
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 169
    .local v2, "rand":Ljava/util/Random;
    const-string v1, ""

    .line 170
    .local v1, "key":Ljava/lang/String;
    move v0, p0

    .line 171
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_0

    .line 172
    add-int/lit8 v0, v0, -0x1

    .line 173
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

    .line 175
    :cond_0
    return-object v1
.end method

.method public static loadCustomWifiConfig(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .prologue
    .line 181
    invoke-static {p0}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 188
    :try_start_0
    const-string v2, "WifiConfig"

    const-string v3, "loadCustomWifiConfig"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/net/wifi/WifiConfiguration;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/motorola/android/internal/util/CBSLoader;->getTargetContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 191
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "WifiApDefaults"

    const-string v2, "loaded carrier specific configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    move-object p1, v0

    .line 196
    :cond_0
    return-object p1

    .line 189
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static loadDefaultWifiConfig(Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x4

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 112
    const-string v0, ""

    .line 114
    .local v0, "carrier":Ljava/lang/String;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 116
    .local v3, "rand":Ljava/util/Random;
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 119
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040651

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "model":Ljava/lang/String;
    const-string v5, "Mobile"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 122
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 125
    :cond_0
    const-string v5, "WifiApDefaults"

    const-string v6, "Loading default configuration"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 135
    .local v4, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2327

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 137
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->set(I)V

    .line 140
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    .line 143
    invoke-static {v8}, Lcom/android/settings/wifi/WifiApDefaults;->generateKey(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 146
    :cond_1
    iput v7, v4, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    .line 147
    iput v8, v4, Landroid/net/wifi/WifiConfiguration;->frequency:I

    .line 149
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 150
    iput v7, v4, Landroid/net/wifi/WifiConfiguration;->channelIndex:I

    .line 154
    :goto_0
    iput-boolean v7, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 155
    const-string v5, "192.168.43.1"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->wifi_ap_gateway:Ljava/lang/String;

    .line 156
    const-string v5, "192.168.43.2"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->dhcp_start_addr:Ljava/lang/String;

    .line 157
    const-string v5, "192.168.43.254"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->dhcp_end_addr:Ljava/lang/String;

    .line 161
    invoke-static {p0, v4}, Lcom/android/settings/wifi/WifiApDefaults;->loadCustomWifiConfig(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 163
    return-object v4

    .line 152
    :cond_2
    iput v8, v4, Landroid/net/wifi/WifiConfiguration;->channelIndex:I

    goto :goto_0
.end method
