.class public Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;
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
    name = "Response"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.motorola.blur.service.blur.devicesetup.newsession.resp"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "NewSessionWS.Response"


# instance fields
.field private mCapInfo:[B

.field private mClientAccountInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

.field private mClientDeviceInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

.field private mCloudChanged:Z

.field private mReq:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

.field private mReq1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;

.field private mServerAccountInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

.field private mServerDeviceInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

.field private mServerOAUTHSessionInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 611
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[BLcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B
    .param p3, "req1"    # Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;

    .prologue
    .line 677
    invoke-direct {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;-><init>(I[B)V

    .line 678
    iput-object p3, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    .line 680
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->expand()V

    .line 681
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    .line 622
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSResponse;-><init>()V

    .line 623
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSResponse;->_readFromParcel(Landroid/os/Parcel;)V

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 625
    .local v1, "more":B
    if-ne v3, v1, :cond_0

    .line 626
    sget-object v2, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;

    iput-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;

    .line 628
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mCloudChanged:Z

    .line 629
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 630
    .local v0, "dataLen":I
    if-eqz v0, :cond_3

    .line 631
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mCapInfo:[B

    .line 632
    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mCapInfo:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 636
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 637
    if-ne v3, v1, :cond_1

    .line 638
    sget-object v2, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    iput-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    .line 640
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->expand()V

    .line 641
    return-void

    .line 628
    .end local v0    # "dataLen":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 634
    .restart local v0    # "dataLen":I
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mCapInfo:[B

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$1;

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Ljava/lang/String;Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;)V
    .locals 1
    .param p1, "error"    # Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "req"    # Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSResponse;-><init>()V

    .line 684
    iput-object p1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 685
    iput-object p2, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;

    .line 687
    iput-object p3, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    .line 688
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x0

    return v0
.end method

.method protected expand()V
    .locals 10

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v7

    sget-object v8, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v7, v8, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    if-eqz v7, :cond_0

    .line 696
    :try_start_0
    iget-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mData:[B

    invoke-static {v7}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->parseFrom([B)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v3

    .line 698
    .local v3, "resp":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    invoke-virtual {v3}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getVersion()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    .line 699
    const-string v7, "NewSessionWS.Response"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got back wrong version in response, expecting: 1 got: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getVersion()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance v7, Lcom/motorola/blur/service/blur/ProtocolErrorException;

    invoke-direct {v7}, Lcom/motorola/blur/service/blur/ProtocolErrorException;-><init>()V

    iput-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 702
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    .end local v3    # "resp":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    :catch_0
    move-exception v1

    .line 759
    .local v1, "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSResponse;->mException:Ljava/lang/Exception;

    .line 760
    invoke-virtual {p0}, Lcom/motorola/blur/service/blur/WSResponse;->_getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 706
    .end local v1    # "ex":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v3    # "resp":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasCaptchaInfo()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 707
    invoke-virtual {v3}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mCapInfo:[B

    .line 710
    :cond_3
    invoke-virtual {v3}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasError()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 711
    invoke-virtual {v3}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getError()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    move-result-object v0

    .line 712
    .local v0, "err":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mErrorMsg:Ljava/lang/String;

    .line 713
    sget-object v7, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->WRONG_PASSWORD:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    if-ne v7, v0, :cond_4

    .line 714
    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidCredsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 715
    :cond_4
    sget-object v7, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    if-ne v7, v0, :cond_5

    .line 716
    const-string v7, "NewSessionWS.Response"

    const-string v8, "invalid arguments - should never happen!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidParamsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0

    .line 718
    :cond_5
    sget-object v7, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    if-ne v7, v0, :cond_6

    .line 719
    const-string v7, "NewSessionWS.Response"

    const-string v8, "parse error - should never happen!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 721
    :cond_6
    sget-object v7, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    if-ne v7, v0, :cond_7

    .line 722
    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ServiceBusyError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 723
    :cond_7
    sget-object v7, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->WRONG_DEVICE:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    if-ne v7, v0, :cond_8

    .line 724
    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->WrongDevice:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 725
    :cond_8
    sget-object v7, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->TIMEOUT:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    if-ne v7, v0, :cond_9

    .line 726
    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 727
    :cond_9
    sget-object v7, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->INVALID_CAPTCHA_INFO:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    if-ne v7, v0, :cond_a

    .line 728
    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->CaptchaInvalidError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 729
    :cond_a
    sget-object v7, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->CAPTCHA_EXPIRED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    if-ne v7, v0, :cond_0

    .line 730
    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->CaptchaExpiredError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 737
    .end local v0    # "err":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;
    :cond_b
    invoke-virtual {v3}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getM()Ljava/lang/String;

    move-result-object v5

    .line 739
    .local v5, "serverM":Ljava/lang/String;
    iget-object v7, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->getResponse1()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getRequest()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->getAA()[B

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;

    invoke-virtual {v8}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->getM()[B

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;

    invoke-virtual {v9}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->getK()[B

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->clientGenerateTestM([B[B[B)[B

    move-result-object v6

    .line 743
    .local v6, "testM":[B
    invoke-static {v5}, Lcom/motorola/blur/service/blur/SRPUtil;->fromhex(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7, v6}, Lcom/motorola/blur/service/blur/SRPUtil;->matches([B[B)Z

    move-result v2

    .line 744
    .local v2, "matches":Z
    if-nez v2, :cond_c

    .line 745
    const-string v7, "NewSessionWS.Response"

    const-string v8, "signatures don\'t match!!!  Dropping response and forcing to try again"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SignatureMismatch:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    iput-object v7, p0, Lcom/motorola/blur/service/blur/WSResponse;->mError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0

    .line 751
    :cond_c
    invoke-virtual {v3}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getData()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v4

    .line 752
    .local v4, "respData":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-virtual {v4}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mServerAccountInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 753
    invoke-virtual {v4}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mServerOAUTHSessionInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 754
    invoke-virtual {v4}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mServerDeviceInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 756
    iget-object v7, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->getResponse1()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getRequest()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->getAccountInfo()[B

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->parseFrom([B)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mClientAccountInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .line 757
    iget-object v7, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->getResponse1()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getRequest()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->getDeviceInfo()[B

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->parseFrom([B)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mClientDeviceInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    const-string v0, "com.motorola.blur.service.blur.devicesetup.newsession.resp"

    return-object v0
.end method

.method public getCapInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 808
    :try_start_0
    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mCapInfo:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mCapInfo:[B

    invoke-static {v2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->parseFrom([B)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 811
    :cond_0
    :goto_0
    return-object v1

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v2, "NewSessionWS.Response"

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
    .line 766
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mClientAccountInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    return-object v0
.end method

.method public getClientDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mClientDeviceInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method public getCloudChanged()Z
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mCloudChanged:Z

    return v0
.end method

.method public getRequest()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    return-object v0
.end method

.method public getRequest1()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;

    return-object v0
.end method

.method public getServerAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mServerAccountInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    return-object v0
.end method

.method public getServerDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mServerDeviceInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    return-object v0
.end method

.method public getServerOAUTHSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mServerOAUTHSessionInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    return-object v0
.end method

.method public setCloudChanged(Z)V
    .locals 0
    .param p1, "cloudChanged"    # Z

    .prologue
    .line 786
    iput-boolean p1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mCloudChanged:Z

    .line 787
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 644
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSResponse;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 645
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 647
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->writeToParcel(Landroid/os/Parcel;I)V

    .line 651
    :goto_0
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mCloudChanged:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 652
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mCapInfo:[B

    if-eqz v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mCapInfo:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mCapInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 658
    :goto_2
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    if-eqz v0, :cond_3

    .line 659
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 660
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;->mReq:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->writeToParcel(Landroid/os/Parcel;I)V

    .line 664
    :goto_3
    return-void

    .line 649
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 651
    goto :goto_1

    .line 656
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 662
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3
.end method
