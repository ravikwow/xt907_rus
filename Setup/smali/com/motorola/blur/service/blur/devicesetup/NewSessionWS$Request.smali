.class public Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;
.super Lcom/motorola/blur/service/blur/WSRequest;
.source "NewSessionWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS;
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
            "Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID:Ljava/lang/String; = "oauthsessions/1/newsessionh1"

.field private static final MY_URL:Ljava/lang/String; = "/ws/oauthsessions/1/newsessionh1?k=android&f=pb&of=0"


# instance fields
.field private mA:Ljava/lang/String;

.field private mAA:[B

.field private mAccountInfo:[B

.field private mCapInfo:[B

.field private mDeviceInfo:[B

.field private mEmail:Ljava/lang/String;

.field private mOAUTHSessionInfo:[B

.field private mPassword:Ljava/lang/String;

.field private mPasswordCheck:Z

.field private mUserLogin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 81
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSRequest;->_readFromParcel(Landroid/os/Parcel;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mUserLogin:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mA:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .local v0, "dataLen":I
    if-eqz v0, :cond_1

    .line 86
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAA:[B

    .line 87
    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAA:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 91
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAccountInfo:[B

    .line 94
    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAccountInfo:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 98
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    if-eqz v0, :cond_3

    .line 100
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mDeviceInfo:[B

    .line 101
    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mDeviceInfo:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 105
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mEmail:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    if-eqz v0, :cond_4

    .line 108
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mCapInfo:[B

    .line 109
    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mCapInfo:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 113
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mOAUTHSessionInfo:[B

    .line 116
    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mOAUTHSessionInfo:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 120
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_6

    :goto_6
    iput-boolean v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mPasswordCheck:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mPassword:Ljava/lang/String;

    .line 122
    return-void

    .end local v0    # "dataLen":I
    :cond_0
    move v1, v3

    .line 82
    goto :goto_0

    .line 89
    .restart local v0    # "dataLen":I
    :cond_1
    iput-object v4, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAA:[B

    goto :goto_1

    .line 96
    :cond_2
    iput-object v4, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAccountInfo:[B

    goto :goto_2

    .line 103
    :cond_3
    iput-object v4, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mDeviceInfo:[B

    goto :goto_3

    .line 111
    :cond_4
    iput-object v4, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mCapInfo:[B

    goto :goto_4

    .line 118
    :cond_5
    iput-object v4, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mOAUTHSessionInfo:[B

    goto :goto_5

    :cond_6
    move v2, v3

    .line 120
    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)V
    .locals 7
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "sn"    # Ljava/lang/String;
    .param p5, "passwd"    # Ljava/lang/String;
    .param p6, "userLogin"    # Z
    .param p7, "capInfo"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 184
    iput-boolean p6, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mUserLogin:Z

    .line 186
    invoke-static {}, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->clientGeneratePrivateA()Ljava/math/BigInteger;

    move-result-object v0

    .line 187
    .local v0, "a":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mA:Ljava/lang/String;

    .line 188
    invoke-static {v0}, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->clientGeneratePublicA(Ljava/math/BigInteger;)[B

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAA:[B

    .line 190
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v4

    .line 191
    .local v4, "req":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->setVersion(I)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->setU(Ljava/lang/String;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    .line 193
    iget-object v6, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAA:[B

    invoke-static {v6}, Lcom/motorola/blur/service/blur/SRPUtil;->tob64([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->setA(Ljava/lang/String;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    .line 195
    invoke-virtual {v4}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 197
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;

    move-result-object v1

    .line 198
    .local v1, "accountInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;->setEmail(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;

    .line 199
    invoke-virtual {v1, p5}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;->setPassword(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;

    .line 200
    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAccountInfo:[B

    .line 202
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    move-result-object v3

    .line 203
    .local v3, "deviceInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;
    const-string v6, "ro.build.version.full"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "blurVersion":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 207
    :cond_0
    const-string v6, "310260000000000"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v2, "Blur_Version.0.0.1.MB200.Blurdev.en.US"

    .line 211
    :cond_1
    :goto_0
    invoke-virtual {v3, v2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setBlurVersion(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 212
    invoke-virtual {v3, p4}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setSerialNumber(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 213
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->composeLangString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setLanguage(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 214
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->readBarcode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setBarCode(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 215
    invoke-static {}, Lcom/motorola/blur/service/blur/BSUtils;->getAccountFlags()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setFlags(I)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 216
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v5

    .line 217
    .local v5, "simInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    invoke-virtual {v5, p2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->setPhone(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    .line 218
    invoke-virtual {v5, p3}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->setIMSI(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    .line 219
    invoke-virtual {v3, v5}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setSimInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 220
    invoke-virtual {v3}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mDeviceInfo:[B

    .line 221
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/motorola/blur/service/blur/WSRequest;->mUseAuth:Z

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mEmail:Ljava/lang/String;

    .line 223
    if-eqz p7, :cond_3

    invoke-virtual {p7}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v6

    :goto_1
    iput-object v6, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mCapInfo:[B

    .line 224
    iput-object p5, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mPassword:Ljava/lang/String;

    .line 225
    return-void

    .line 207
    .end local v5    # "simInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    :cond_2
    const-string v2, "Blur_Version.1.0.8.MB200.T-Mobile.en.US"

    goto :goto_0

    .line 223
    .restart local v5    # "simInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 304
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;

    invoke-direct {v0, p1, p2, p0}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;-><init>(I[BLcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public getA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mA:Ljava/lang/String;

    return-object v0
.end method

.method public getAA()[B
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAA:[B

    return-object v0
.end method

.method public getAccountInfo()[B
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAccountInfo:[B

    return-object v0
.end method

.method public getCapInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mCapInfo:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mCapInfo:[B

    invoke-static {v2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->parseFrom([B)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 287
    :cond_0
    :goto_0
    return-object v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v2, "NewSessionWS.Request"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDeviceInfo()[B
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mDeviceInfo:[B

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getOAUTHSessionInfo()[B
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mOAUTHSessionInfo:[B

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordCheck()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mPasswordCheck:Z

    return v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
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
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "url":Ljava/lang/StringBuilder;
    const-string v1, "/ws/oauthsessions/1/newsessionh1?k=android&f=pb&of=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUserLogin()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mUserLogin:Z

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    const-string v0, "oauthsessions/1/newsessionh1"

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public setOAUTHSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .prologue
    .line 252
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mOAUTHSessionInfo:[B

    .line 253
    if-eqz p1, :cond_0

    .line 255
    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    invoke-static {v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->parseFrom([B)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v1

    .line 256
    .local v1, "req":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    invoke-virtual {v1, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->setSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    .line 257
    invoke-virtual {v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v1    # "req":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    :cond_0
    :goto_1
    return-void

    .line 252
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v2, "NewSessionWS.Request"

    const-string v3, "got exception adding data "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setPasswordCheck(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mPasswordCheck:Z

    .line 267
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 5
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 292
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->getDeviceInfo()[B

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->parseFrom([B)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    move-result-object v0

    .line 293
    .local v0, "deviceInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;
    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->getSimInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    move-result-object v2

    .line 294
    .local v2, "simInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    invoke-virtual {v2, p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;->setPhone(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;

    .line 295
    invoke-virtual {v0, v2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->setSimInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .line 296
    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mDeviceInfo:[B
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v0    # "deviceInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;
    .end local v2    # "simInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo$Builder;
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v3, "NewSessionWS.Request"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 126
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mUserLogin:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 127
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAA:[B

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAA:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAA:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAccountInfo:[B

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAccountInfo:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mAccountInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 140
    :goto_2
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mDeviceInfo:[B

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mDeviceInfo:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mDeviceInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 146
    :goto_3
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mCapInfo:[B

    if-eqz v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mCapInfo:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mCapInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 153
    :goto_4
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mOAUTHSessionInfo:[B

    if-eqz v0, :cond_5

    .line 154
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mOAUTHSessionInfo:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mOAUTHSessionInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 159
    :goto_5
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mPasswordCheck:Z

    if-eqz v0, :cond_6

    :goto_6
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 160
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return-void

    :cond_0
    move v0, v2

    .line 126
    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 144
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 151
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 157
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_6
    move v1, v2

    .line 159
    goto :goto_6
.end method
