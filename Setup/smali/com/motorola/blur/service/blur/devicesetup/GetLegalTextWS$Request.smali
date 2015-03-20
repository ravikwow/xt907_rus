.class public Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Request;
.super Lcom/motorola/blur/service/blur/WSRequest;
.source "GetLegalTextWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID:Ljava/lang/String; = "legal/1/text"

.field private static final MY_URL:Ljava/lang/String; = "/ws/legal/1/text?k=android&f=pb&of=0"


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Request$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Request$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSRequest;->_readFromParcel(Landroid/os/Parcel;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Request;->mType:Ljava/lang/String;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "sn"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 84
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/motorola/blur/service/blur/WSRequest;->mUseAuth:Z

    .line 85
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Request;->mType:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->newBuilder()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v2

    .line 87
    .local v2, "req":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    invoke-virtual {v2, p1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->setType(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    .line 89
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    move-result-object v1

    .line 90
    .local v1, "deviceInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->getBlurVersion()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "blurVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    :cond_0
    const-string v4, "310260000000000"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "Blur_Version.0.0.1.MB200.Blurdev.en.US"

    .line 96
    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setBlurVersion(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 97
    invoke-virtual {v1, p4}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setSerialNumber(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 98
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->composeLangString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setLanguage(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 99
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->readBarcode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setBarCode(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 100
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->getAccountFlags()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setFlags(I)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 101
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v3

    .line 102
    .local v3, "simInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    invoke-virtual {v3, p2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->setPhone(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    .line 103
    invoke-virtual {v3, p3}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->setIMSI(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    .line 104
    invoke-virtual {v1, v3}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setSimInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 105
    invoke-virtual {v2, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    .line 107
    invoke-virtual {v2}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->build()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 108
    return-void

    .line 93
    .end local v3    # "simInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    :cond_2
    const-string v0, "Blur_Version.1.0.8.MB200.T-Mobile.en.US"

    goto :goto_0
.end method


# virtual methods
.method public canUseMasterCloud()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 112
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Request;->mType:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Response;-><init>(I[BLjava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "com.motorola.blur.service.ws.request.aidl"

    return-object v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "/ws/legal/1/text?k=android&f=pb&of=0"

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
    const-string v1, "/ws/legal/1/text?k=android&f=pb&of=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "legal/1/text"

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/GetLegalTextWS$Request;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return-void
.end method
