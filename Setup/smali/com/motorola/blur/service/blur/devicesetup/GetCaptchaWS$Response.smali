.class public Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;
.super Lcom/motorola/blur/service/blur/WSResponse;
.source "GetCaptchaWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.blur.devicesetup.getcaptcha.resp"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "GetCaptchaWS.Response"


# instance fields
.field private mCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;->mCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 168
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;->expand()V

    .line 169
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSResponse;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;->mCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 148
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSResponse;->_readFromParcel(Landroid/os/Parcel;)V

    .line 149
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;->expand()V

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$1;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method protected expand()V
    .locals 5

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v3, v4, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v3, :cond_0

    .line 177
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v3}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v2

    .line 179
    .local v2, "resp":Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasError()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;

    move-result-object v0

    .line 181
    .local v0, "err":Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 182
    sget-object v3, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;

    if-ne v3, v0, :cond_2

    .line 183
    const-string v3, "GetCaptchaWS.Response"

    const-string v4, "invalid arguments - should never happen!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v0    # "err":Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;
    .end local v2    # "resp":Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    :catch_0
    move-exception v1

    .line 196
    .local v1, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 197
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 185
    .end local v1    # "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "err":Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;
    .restart local v2    # "resp":Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    :cond_2
    :try_start_1
    sget-object v3, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;

    if-ne v3, v0, :cond_0

    .line 186
    const-string v3, "GetCaptchaWS.Response"

    const-string v4, "request parse error - should never happen!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 193
    .end local v0    # "err":Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;
    :cond_3
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasCaptchaInfo()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;->mCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "com.motorola.blur.service.blur.devicesetup.getcaptcha.resp"

    return-object v0
.end method

.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/GetCaptchaWS$Response;->mCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    return-void
.end method
