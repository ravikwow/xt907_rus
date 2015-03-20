.class public Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;
.super Lcom/motorola/blur/service/blur/WSRequest;
.source "NewAccountWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS;
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
            "Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID:Ljava/lang/String; = "accounts/4/newaccount"

.field private static final MY_URL:Ljava/lang/String; = "/ws/accounts/4/newaccount?k=android&f=pb&of=0"


# instance fields
.field private mCapInfo:[B

.field private mEmail:Ljava/lang/String;

.field private mRestoreFromDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSRequest;->_readFromParcel(Landroid/os/Parcel;)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mEmail:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mRestoreFromDevice:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, "dataLen":I
    if-eqz v0, :cond_1

    .line 76
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mCapInfo:[B

    .line 77
    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mCapInfo:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 81
    :goto_1
    return-void

    .line 73
    .end local v0    # "dataLen":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 79
    .restart local v0    # "dataLen":I
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mCapInfo:[B

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)V
    .locals 6
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "sn"    # Ljava/lang/String;
    .param p5, "passwd"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "restoreFromDevice"    # Z
    .param p8, "capInfo"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 116
    iput-boolean p7, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mRestoreFromDevice:Z

    .line 118
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v3

    .line 119
    .local v3, "req":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->setVersion(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    .line 120
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;

    move-result-object v0

    .line 121
    .local v0, "accountInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;->setEmail(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;

    .line 122
    invoke-virtual {v0, p5}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;->setPassword(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;

    .line 123
    invoke-virtual {v0, p6}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;->setName(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;

    .line 124
    invoke-virtual {v3, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->setAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    .line 126
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    move-result-object v2

    .line 127
    .local v2, "deviceInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;
    const-string v5, "ro.build.version.full"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "blurVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    :cond_0
    const-string v5, "310260000000000"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v1, "Blur_Version.0.0.1.MB200.Blurdev.en.US"

    .line 134
    :cond_1
    :goto_0
    invoke-virtual {v2, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setBlurVersion(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 135
    invoke-virtual {v2, p4}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setSerialNumber(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 136
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->composeLangString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setLanguage(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 137
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->readBarcode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setBarCode(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 138
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->getAccountFlags()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setFlags(I)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 139
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v4

    .line 140
    .local v4, "simInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    invoke-virtual {v4, p2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->setPhone(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    .line 141
    invoke-virtual {v4, p3}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->setIMSI(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    .line 142
    invoke-virtual {v2, v4}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setSimInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 143
    invoke-virtual {v3, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    .line 145
    invoke-virtual {v3, p7}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->setRestoreFromDevice(Z)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    .line 147
    invoke-virtual {v3}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 148
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/motorola/blur/service/blur/WSRequest;->mUseAuth:Z

    .line 149
    iput-object p1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mEmail:Ljava/lang/String;

    .line 150
    if-eqz p8, :cond_3

    invoke-virtual {p8}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mCapInfo:[B

    .line 151
    return-void

    .line 130
    .end local v4    # "simInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    :cond_2
    const-string v1, "Blur_Version.1.0.8.MB200.T-Mobile.en.US"

    goto :goto_0

    .line 150
    .restart local v4    # "simInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 155
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;

    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    invoke-direct {v0, p1, p2, v1}, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;-><init>(I[B[B)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountInfo()[B
    .locals 3

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    invoke-static {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 174
    :goto_0
    return-object v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v1, "NewAccountWS.Request"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCapInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mCapInfo:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mCapInfo:[B

    invoke-static {v2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->parseFrom([B)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 200
    :cond_0
    :goto_0
    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v2, "NewAccountWS.Request"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDeviceInfo()[B
    .locals 3

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    invoke-static {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    :goto_0
    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v1, "NewAccountWS.Request"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getRestoreFromDevice()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mRestoreFromDevice:Z

    return v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "serverBaseUrl"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "loadBalancerValue"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "url":Ljava/lang/StringBuilder;
    const-string v1, "/ws/accounts/4/newaccount?k=android&f=pb&of=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "accounts/4/newaccount"

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public setAccountSignature(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)V
    .locals 4
    .param p1, "sig"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .prologue
    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    invoke-static {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v1

    .line 206
    .local v1, "req":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {v1, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->setNewAccountSignature(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    .line 208
    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1    # "req":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v2, "NewAccountWS.Request"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 217
    :try_start_0
    iget-object v4, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    invoke-static {v4}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v2

    .line 218
    .local v2, "req":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    move-result-object v0

    .line 219
    .local v0, "deviceInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;
    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->getSimInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v3

    .line 220
    .local v3, "simInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    invoke-virtual {v3, p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->setPhone(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    .line 221
    invoke-virtual {v0, v3}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setSimInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 222
    invoke-virtual {v2, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    .line 223
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0    # "deviceInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;
    .end local v2    # "req":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .end local v3    # "simInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v4, "NewAccountWS.Request"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mRestoreFromDevice:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 87
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mCapInfo:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mCapInfo:[B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mCapInfo:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Request;->mCapInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 93
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 86
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
