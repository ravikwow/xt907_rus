.class public Lcom/motorola/blur/service/blur/BSUtils;
.super Ljava/lang/Object;
.source "BSUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/BSUtils$MotherUserAccountState;
    }
.end annotation


# static fields
.field private static final BLUR_VERSION_PROP:Ljava/lang/String; = "ro.build.version.full"

.field private static final FINGERPRINT_PROP:Ljava/lang/String; = "ro.build.fingerprint"

.field private static final LOG_TAG:Ljava/lang/String; = "BSUtils"

.field public static final MOTHER_USER_ACCOUNT_ID:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTHER_USER_ACCOUNT_ID"

.field public static final MOTHER_USER_ACCOUNT_STATE:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTHER_USER_ACCOUNT_STATE"

.field public static final MOTHER_USER_CREDS_EMAIL:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_EMAIL"

.field public static final MOTHER_USER_CREDS_ERROR:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_ERROR"

.field public static final MOTHER_USER_CREDS_NAME:Ljava/lang/String; = "Motorola"

.field public static final MOTHER_USER_CREDS_PASSWORD:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_PASSWORD"

.field public static final MOTHER_USER_CREDS_PASSWORD_CORRECT:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_PASSWORD_CORRECT"

.field public static final MOTHER_USER_CREDS_TYPE:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

.field public static final MOTHER_USER_CREDS_USERNAME:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_USERNAME"

.field public static final MOTHER_USER_DEVICE_ID:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTHER_USER_DEVICE_ID"

.field public static final MOTOID_SERVER_HOSTNAME:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTOID_SERVER_HOSTNAME"

.field public static final MOTOID_USER_ACCOUNT_ID:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTOID_USER_ACCOUNT_ID"

.field public static final MOTOID_USER_ACCOUNT_TOKEN:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTOID_USER_ACCOUNT_TOKEN"

.field public static final MOTOID_USER_ACCOUNT_USERNAME:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTOID_USER_ACCOUNT_USERNAME"

.field public static final MOTOID_USER_CREDS_EMAIL:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTOID_USER_CREDS_EMAIL"

.field public static final MOTOID_USER_CREDS_NAME:Ljava/lang/String; = "Motorola"

.field public static final MOTOID_USER_CREDS_PASSWORD:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTOID_USER_CREDS_PASSWORD"

.field public static final MOTOID_USER_CREDS_PROVIDER:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTOID_USER_CREDS_PROVIDER"

.field public static final MOTOID_USER_CREDS_TYPE:Ljava/lang/String; = "com.motorola.blur.service.bsutils.motorola"

.field public static final MOTOID_USER_VERIFIED_STATUS:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTOID_USER_VERIFIED_STATUS"

.field public static final WIPED_DEVICE:Ljava/lang/String; = "com.motorola.blur.service.bsutils.wipedDevice"

.field private static mMobileDataCapable:Z

.field private static mMobileDataCapableReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    sput-boolean v0, Lcom/motorola/blur/service/blur/BSUtils;->mMobileDataCapable:Z

    .line 83
    sput-boolean v0, Lcom/motorola/blur/service/blur/BSUtils;->mMobileDataCapableReady:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static buildAndSendMMApiWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "req"    # Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;
    .param p2, "responseKey"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v1

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v1, v2, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v1

    .line 142
    .end local p1    # "req":Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;
    :goto_0
    return-object v1

    .line 130
    .restart local p1    # "req":Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-nez v1, :cond_1

    .line 132
    const-string v1, "BSUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request not parcelable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 136
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.ws.key.requestdata"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v1, "com.motorola.blur.service.ws.key.responsedata"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "com.motorola.blur.service.ws.key.requestdata"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast p1, Landroid/os/Parcelable;

    .end local p1    # "req":Lcom/motorola/blur/service/blur/ws/MMApiWSRequest;
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 140
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 142
    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0
.end method

.method public static buildAndSendWSRequestIntent(Landroid/content/Context;Lcom/motorola/blur/service/blur/WSRequest;Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "req"    # Lcom/motorola/blur/service/blur/WSRequest;
    .param p2, "responseKey"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/WSRequest;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v1

    sget-object v2, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v1, v2, :cond_0

    .line 106
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/WSRequest;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v1

    .line 121
    .end local p1    # "req":Lcom/motorola/blur/service/blur/WSRequest;
    :goto_0
    return-object v1

    .line 109
    .restart local p1    # "req":Lcom/motorola/blur/service/blur/WSRequest;
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-nez v1, :cond_1

    .line 111
    const-string v1, "BSUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request not parcelable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 115
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/WSRequest;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "myIntent":Landroid/content/Intent;
    const-string v1, "com.motorola.blur.service.ws.key.requestdata"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "com.motorola.blur.service.ws.key.responsedata"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "com.motorola.blur.service.ws.key.requestdata"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast p1, Landroid/os/Parcelable;

    .end local p1    # "req":Lcom/motorola/blur/service/blur/WSRequest;
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    invoke-static {p0, v0}, Lcom/motorola/blur/service/blur/BSUtils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 121
    sget-object v1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0
.end method

.method public static composeLangString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 147
    .local v2, "loc":Ljava/util/Locale;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    .local v1, "language":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 151
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAccountFlags()I
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->MULTIPLE_HOME_SCREEN_CAPABILITY:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->getNumber()I

    move-result v0

    sget-object v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->NO_GOOGLE_PROVIDER:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->getNumber()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->YAHOO_AUTH_CAPABILITY:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->getNumber()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->SNP_OAUTH_CAPABILITY:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->getNumber()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->EMAIL_VERIFICATION_CAPABILITY:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->getNumber()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->LOCK_DEVICE_CAPABILITY:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->getNumber()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->STATUS_APP_SYNC_SOURCE_CAPABILITY:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->getNumber()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->STABLE_4_5_FEATURES_SUPPORT:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->getNumber()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->HSS6_FEATURES_SUPPORT:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->getNumber()I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->HSS7_FEATURES_SUPPORT:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$FlagBit;->getNumber()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static getBlurVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "ro.build.version.full"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFingerPrint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "ro.build.fingerprint"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSerialNum(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 211
    const/4 v2, 0x0

    .line 213
    .local v2, "serialNum":Ljava/lang/String;
    invoke-static {p0}, Lcom/motorola/blur/service/blur/BSUtils;->isMobileDataCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 216
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 230
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xe

    if-lt v5, v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x32

    if-gt v5, v6, :cond_1

    const-string v5, "^[0-9a-fA-F]*"

    invoke-static {v5, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 233
    :cond_1
    const-string v2, "INVALID_SERIAL_NUMBER"

    .line 236
    :cond_2
    return-object v2

    .line 222
    :cond_3
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 223
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 224
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v4, :cond_4

    const/4 v1, 0x0

    .line 225
    .local v1, "macAddress":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_0

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1111"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 224
    .end local v1    # "macAddress":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static isMobileDataCapable(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 244
    if-nez p0, :cond_0

    .line 245
    sget-boolean v6, Lcom/motorola/blur/service/blur/BSUtils;->mMobileDataCapable:Z

    .line 268
    :goto_0
    return v6

    .line 248
    :cond_0
    sget-boolean v6, Lcom/motorola/blur/service/blur/BSUtils;->mMobileDataCapableReady:Z

    if-nez v6, :cond_1

    .line 249
    sput-boolean v7, Lcom/motorola/blur/service/blur/BSUtils;->mMobileDataCapableReady:Z

    .line 251
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 254
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1

    .line 255
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 257
    .local v4, "infoList":[Landroid/net/NetworkInfo;
    if-eqz v4, :cond_1

    .line 258
    move-object v0, v4

    .local v0, "arr$":[Landroid/net/NetworkInfo;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 259
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_2

    .line 261
    sput-boolean v7, Lcom/motorola/blur/service/blur/BSUtils;->mMobileDataCapable:Z

    .line 268
    .end local v0    # "arr$":[Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "i$":I
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "infoList":[Landroid/net/NetworkInfo;
    .end local v5    # "len$":I
    :cond_1
    sget-boolean v6, Lcom/motorola/blur/service/blur/BSUtils;->mMobileDataCapable:Z

    goto :goto_0

    .line 258
    .restart local v0    # "arr$":[Landroid/net/NetworkInfo;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "i$":I
    .restart local v3    # "info":Landroid/net/NetworkInfo;
    .restart local v4    # "infoList":[Landroid/net/NetworkInfo;
    .restart local v5    # "len$":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static readBarcode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 170
    :try_start_0
    const-string v2, "ro.serialno"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    :cond_0
    const-string v2, "ro.SERIALNO"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    :cond_1
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 176
    :cond_2
    const-string v2, "ro.ril.barcode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 178
    :cond_3
    const-string v2, "ro.gsm.barcode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_4

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 180
    :cond_4
    const-string v1, "0000000000000000"

    .line 189
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 184
    .restart local v1    # "value":Ljava/lang/String;
    :cond_5
    const-string v2, "BSUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "barcode is ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BSUtils"

    const-string v3, "failed to readBarcode "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    const-string v1, "0000000000000000"

    goto :goto_0
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "recv"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 86
    const-string v0, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "recv"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 91
    const-string v0, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method public static sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    const-string v0, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static sendOrderedBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "recv"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v4, 0x0

    .line 99
    const-string v2, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 101
    return-void
.end method
