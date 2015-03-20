.class public Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;
.super Lcom/motorola/blur/service/blur/WSResponse;
.source "NewSessionWS.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response1"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.blur.devicesetup.newsession.resp1"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "NewSessionWS.Response1"


# instance fields
.field private mB:Ljava/lang/String;

.field private mContext:J

.field private mReq:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

.field private mSalt:Ljava/lang/String;

.field private mSavedLogin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 329
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[BLcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B
    .param p3, "req"    # Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 363
    iput-object p3, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->mReq:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    .line 364
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->expand()V

    .line 365
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSResponse;-><init>()V

    .line 341
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSResponse;->_readFromParcel(Landroid/os/Parcel;)V

    .line 342
    sget-object v0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->mReq:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    .line 343
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->expand()V

    .line 344
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$1;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method protected expand()V
    .locals 6

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v3, v4, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v3, :cond_0

    .line 374
    :try_start_0
    iget-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v3}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->parseFrom([B)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;

    move-result-object v2

    .line 376
    .local v2, "resp":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    invoke-virtual {v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 377
    const-string v3, "NewSessionWS.Response1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got back wrong version in response, expecting: 1 got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v3, Lcom/motorola/blur/service/blur/ProtocolErrorException;

    invoke-direct {v3}, Lcom/motorola/blur/service/blur/ProtocolErrorException;-><init>()V

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 380
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    .end local v2    # "resp":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    :catch_0
    move-exception v1

    .line 415
    .local v1, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 416
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 384
    .end local v1    # "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v2    # "resp":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasError()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 385
    invoke-virtual {v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getError()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    move-result-object v0

    .line 386
    .local v0, "err":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 388
    sget-object v3, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;->WRONG_LOGIN:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    if-ne v3, v0, :cond_3

    .line 389
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidCredsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 390
    :cond_3
    sget-object v3, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    if-ne v3, v0, :cond_4

    .line 391
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 392
    :cond_4
    sget-object v3, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    if-ne v3, v0, :cond_5

    .line 393
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 394
    :cond_5
    sget-object v3, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    if-ne v3, v0, :cond_6

    .line 395
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ServiceBusyError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 396
    :cond_6
    sget-object v3, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;->ACCOUNT_DISABLED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    if-ne v3, v0, :cond_7

    .line 397
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AccountDisabledError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 398
    :cond_7
    sget-object v3, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;->NO_ACCOUNT:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    if-ne v3, v0, :cond_8

    .line 399
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AccountNotFound:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 400
    :cond_8
    sget-object v3, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;->ACCOUNT_MOVED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    if-ne v3, v0, :cond_9

    .line 401
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AccountMovedError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 402
    :cond_9
    sget-object v3, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;->ACCOUNT_DELETED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;

    if-ne v3, v0, :cond_0

    .line 403
    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AccountDeletedError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v3, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 409
    .end local v0    # "err":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1$Error;
    :cond_a
    invoke-virtual {v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getS()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->mSalt:Ljava/lang/String;

    .line 410
    invoke-virtual {v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getB()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->mB:Ljava/lang/String;

    .line 411
    invoke-virtual {v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getContext()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->mContext:J

    .line 412
    invoke-virtual {v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->hasSavedLogin()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;->getSavedLogin()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->mSavedLogin:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    const-string v0, "com.motorola.blur.service.blur.devicesetup.newsession.resp1"

    return-object v0
.end method

.method public getB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->mB:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()J
    .locals 2

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->mContext:J

    return-wide v0
.end method

.method public getRequest()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->mReq:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    return-object v0
.end method

.method public getSalt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->mSalt:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->mSavedLogin:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 348
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->mReq:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->writeToParcel(Landroid/os/Parcel;I)V

    .line 349
    return-void
.end method
