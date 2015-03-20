.class public Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;
.super Lcom/motorola/blur/service/blur/WSResponse;
.source "NewAccountWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.blur.devicesetup.newaccount.resp"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "NewAccountWS.Response"


# instance fields
.field private mCapInfo:[B

.field private mClientAccountInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

.field private mClientDeviceInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

.field private mCloudChanged:Z

.field private mReqData:[B

.field private mRestoredFromDevice:Z

.field private mServerAccountInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

.field private mServerDeviceInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

.field private mServerOAUTHSessionInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B
    .param p3, "reqData"    # [B

    .prologue
    .line 303
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 304
    iput-object p3, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mReqData:[B

    .line 305
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->expand()V

    .line 306
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 255
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSResponse;-><init>()V

    .line 256
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSResponse;->_readFromParcel(Landroid/os/Parcel;)V

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 258
    .local v0, "dataLen":I
    if-eqz v0, :cond_0

    .line 259
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mReqData:[B

    .line 260
    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mReqData:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 264
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mCloudChanged:Z

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 266
    if-eqz v0, :cond_2

    .line 267
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mCapInfo:[B

    .line 268
    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mCapInfo:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 272
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->expand()V

    .line 273
    return-void

    .line 262
    :cond_0
    iput-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mReqData:[B

    goto :goto_0

    .line 264
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 270
    :cond_2
    iput-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mCapInfo:[B

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$1;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method protected expand()V
    .locals 8

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v5

    sget-object v6, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v5, v6, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v5, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v5, :cond_0

    .line 314
    :try_start_0
    iget-object v5, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v5}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    move-result-object v3

    .line 316
    .local v3, "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;
    invoke-virtual {v3}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->getVersion()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 317
    const-string v5, "NewAccountWS.Response"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got back wrong version in response, expecting: 1 got: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->getVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v5, Lcom/motorola/blur/service/blur/ProtocolErrorException;

    invoke-direct {v5}, Lcom/motorola/blur/service/blur/ProtocolErrorException;-><init>()V

    iput-object v5, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 320
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    .end local v3    # "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;
    :catch_0
    move-exception v1

    .line 354
    .local v1, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 355
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 324
    .end local v1    # "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v3    # "resp":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->hasError()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 325
    invoke-virtual {v3}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;

    move-result-object v0

    .line 326
    .local v0, "err":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 327
    sget-object v5, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;->ACCOUNT_EXISTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;

    if-ne v5, v0, :cond_3

    .line 328
    sget-object v5, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AlreadyExists:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v5, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 329
    :cond_3
    sget-object v5, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;

    if-ne v5, v0, :cond_4

    .line 330
    const-string v5, "NewAccountWS.Response"

    const-string v6, "invalid arguments - should never happen!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v5, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v5, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 332
    :cond_4
    sget-object v5, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;

    if-ne v5, v0, :cond_5

    .line 333
    const-string v5, "NewAccountWS.Response"

    const-string v6, "parse error - should never happen!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sget-object v5, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v5, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 335
    :cond_5
    sget-object v5, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;

    if-ne v5, v0, :cond_6

    .line 336
    sget-object v5, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ServiceBusyError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v5, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 337
    :cond_6
    sget-object v5, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;->WRONG_DEVICE:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;

    if-ne v5, v0, :cond_0

    .line 338
    sget-object v5, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->WrongDevice:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v5, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 344
    .end local v0    # "err":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;
    :cond_7
    invoke-virtual {v3}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->getData()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v4

    .line 345
    .local v4, "respData":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    invoke-virtual {v4}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mServerAccountInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 346
    invoke-virtual {v4}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mServerOAUTHSessionInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 347
    invoke-virtual {v4}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mServerDeviceInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 349
    iget-object v5, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mReqData:[B

    invoke-static {v5}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v2

    .line 350
    .local v2, "req":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mClientAccountInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .line 351
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mClientDeviceInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 352
    invoke-virtual {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->getRestoreFromDevice()Z

    move-result v5

    iput-boolean v5, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mRestoredFromDevice:Z
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    const-string v0, "com.motorola.blur.service.blur.devicesetup.newaccount.resp"

    return-object v0
.end method

.method public getCapInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 403
    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mCapInfo:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mCapInfo:[B

    invoke-static {v2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->parseFrom([B)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 406
    :cond_0
    :goto_0
    return-object v1

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v2, "NewAccountWS.Response"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapInfo() exception ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getClientAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mClientAccountInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    return-object v0
.end method

.method public getClientDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mClientDeviceInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method public getCloudChanged()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mCloudChanged:Z

    return v0
.end method

.method public getRestoredFromDevice()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mRestoredFromDevice:Z

    return v0
.end method

.method public getServerAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mServerAccountInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    return-object v0
.end method

.method public getServerDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mServerDeviceInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    return-object v0
.end method

.method public getServerOAUTHSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mServerOAUTHSessionInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    return-object v0
.end method

.method public setCapInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 1
    .param p1, "capInfo"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .prologue
    .line 393
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mCapInfo:[B

    .line 394
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCloudChanged(Z)V
    .locals 0
    .param p1, "cloudChanged"    # Z

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mCloudChanged:Z

    .line 386
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 277
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mReqData:[B

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mReqData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mReqData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 283
    :goto_0
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mCloudChanged:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 284
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mCapInfo:[B

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mCapInfo:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;->mCapInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 290
    :goto_2
    return-void

    .line 281
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 283
    goto :goto_1

    .line 288
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
