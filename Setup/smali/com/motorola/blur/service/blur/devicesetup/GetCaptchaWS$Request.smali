.class public Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Request;
.super Lcom/motorola/blur/service/blur/WSRequest;
.source "GetCaptchaWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field private static final BLUR_VERSION_PROP:Ljava/lang/String; = "ro.build.version.full"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID:Ljava/lang/String; = "captcha/2/getcaptcha"

.field private static final MY_URL:Ljava/lang/String; = "/ws/captcha/2/getcaptcha?k=android&f=pb&of=0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Request$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Request$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSRequest;->_readFromParcel(Landroid/os/Parcel;)V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "sn"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 84
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/motorola/blur/service/blur/WSRequest;->mUseAuth:Z

    .line 86
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

    move-result-object v1

    .line 87
    .local v1, "captchaReq":Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    move-result-object v2

    .line 88
    .local v2, "deviceInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;
    const-string v4, "ro.build.version.full"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "blurVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    :cond_0
    const-string v4, "310260000000000"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "Blur_Version.0.0.1.MB200.Blurdev.en.US"

    .line 95
    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setBlurVersion(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 96
    invoke-virtual {v2, p3}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setSerialNumber(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 97
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->composeLangString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setLanguage(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 98
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->readBarcode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setBarCode(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 99
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->getAccountFlags()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setFlags(I)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 100
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v3

    .line 101
    .local v3, "simInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    invoke-virtual {v3, p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->setPhone(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    .line 102
    invoke-virtual {v3, p2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->setIMSI(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    .line 103
    invoke-virtual {v2, v3}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setSimInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 104
    invoke-virtual {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

    .line 106
    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 107
    return-void

    .line 91
    .end local v3    # "simInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    :cond_2
    const-string v0, "Blur_Version.1.0.8.MB200.T-Mobile.en.US"

    goto :goto_0
.end method


# virtual methods
.method public canUseMasterCloud()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 111
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;

    invoke-direct {v0, p1, p2}, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;-><init>(I[B)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "/ws/captcha/2/getcaptcha?k=android&f=pb&of=0"

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "serverBaseUrl"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "loadBalancerValue"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "url":Ljava/lang/StringBuilder;
    const-string v1, "/ws/captcha/2/getcaptcha?k=android&f=pb&of=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "captcha/2/getcaptcha"

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    return-void
.end method
