.class public Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;
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
    name = "Request1"
.end annotation


# static fields
.field private static final BOTA_CONFIG_ID:Ljava/lang/String; = "provision.multi.config.id"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID:Ljava/lang/String; = "oauthsessions/1/newsessionh2"

.field private static final LOG_TAG:Ljava/lang/String; = "NewSessionWS.Request1"

.field private static final MY_URL:Ljava/lang/String; = "/ws/oauthsessions/1/newsessionh2?k=android&f=pb&of=0"


# instance fields
.field private mK:[B

.field private mM:[B

.field private mResp1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 452
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 463
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 464
    invoke-virtual {p0, p1}, Lcom/motorola/blur/service/blur/WSRequest;->_readFromParcel(Landroid/os/Parcel;)V

    .line 465
    sget-object v1, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mResp1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 467
    .local v0, "dataLen":I
    if-eqz v0, :cond_0

    .line 468
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mK:[B

    .line 469
    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mK:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 473
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 474
    if-eqz v0, :cond_1

    .line 475
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mM:[B

    .line 476
    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mM:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 480
    :goto_1
    return-void

    .line 471
    :cond_0
    iput-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mK:[B

    goto :goto_0

    .line 478
    :cond_1
    iput-object v2, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mM:[B

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$1;

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;)V
    .locals 13
    .param p1, "resp1"    # Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/motorola/blur/service/blur/WSRequest;-><init>()V

    .line 519
    iput-object p1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mResp1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;

    .line 520
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mUseAuth:Z

    .line 521
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getB()Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, "b":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getSalt()Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "salt":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getRequest()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->getAccountInfo()[B

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->parseFrom([B)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v6

    .line 527
    .local v6, "accountInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getRequest()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->getCapInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v7

    .line 528
    .local v7, "capInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getRequest()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->getOAUTHSessionInfo()[B

    move-result-object v10

    .line 529
    .local v10, "oauthBytes":[B
    if-eqz v10, :cond_3

    invoke-static {v10}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->parseFrom([B)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v11

    .line 532
    .local v11, "oauthInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getSavedLogin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getSavedLogin()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "email":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->getPassword()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getRequest()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->getA()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->clientGeneratePrivateK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mK:[B

    .line 540
    invoke-virtual {v6}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getRequest()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->getAA()[B

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mK:[B

    invoke-static/range {v0 .. v5}, Lcom/motorola/blur/service/blur/devicesetup/RFC2945Util;->clientGeneratePublicM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mM:[B

    .line 543
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v12

    .line 544
    .local v12, "req":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->setVersion(I)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    .line 545
    iget-object v1, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mM:[B

    invoke-static {v1}, Lcom/motorola/blur/service/blur/SRPUtil;->tohex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->setM(Ljava/lang/String;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    .line 546
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getContext()J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->setContext(J)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    .line 547
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getRequest()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->getDeviceInfo()[B

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->parseFrom([B)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    .line 548
    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->getRequest()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request;->getUserLogin()Z

    move-result v1

    invoke-virtual {v12, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->setUserLogin(Z)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    .line 549
    if-eqz v7, :cond_0

    .line 550
    invoke-virtual {v12, v7}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    .line 552
    :cond_0
    if-eqz v11, :cond_1

    .line 553
    invoke-virtual {v12, v11}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->setSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    .line 556
    :cond_1
    const-string v1, "provision.multi.config.id"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 557
    .local v8, "configId":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 558
    invoke-virtual {v12, v8}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->setConfigId(Ljava/lang/String;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    .line 561
    :cond_2
    invoke-virtual {v12}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/service/blur/WSRequest;->mData:[B

    .line 567
    .end local v0    # "email":Ljava/lang/String;
    .end local v6    # "accountInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    .end local v7    # "capInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .end local v8    # "configId":Ljava/lang/String;
    .end local v10    # "oauthBytes":[B
    .end local v11    # "oauthInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .end local v12    # "req":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    :goto_2
    return-void

    .line 529
    .restart local v6    # "accountInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    .restart local v7    # "capInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .restart local v10    # "oauthBytes":[B
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 532
    .restart local v11    # "oauthInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    :cond_4
    invoke-virtual {v6}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->getEmail()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 563
    .end local v6    # "accountInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    .end local v7    # "capInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .end local v10    # "oauthBytes":[B
    .end local v11    # "oauthInfo":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    :catch_0
    move-exception v9

    .line 564
    .local v9, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v1, "NewSessionWS.Request1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request1() exception ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iput-object v9, p0, Lcom/motorola/blur/service/blur/WSRequest;->mException:Ljava/lang/Exception;

    goto :goto_2
.end method


# virtual methods
.method public createResponse(I[B)Lcom/motorola/blur/service/blur/WSResponse;
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "data"    # [B

    .prologue
    .line 583
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;

    invoke-direct {v0, p1, p2, p0}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;-><init>(I[BLcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public getK()[B
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mK:[B

    return-object v0
.end method

.method public getM()[B
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mM:[B

    return-object v0
.end method

.method public getResponse1()Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mResp1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;

    return-object v0
.end method

.method protected getRootUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
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
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    .local v0, "url":Ljava/lang/StringBuilder;
    const-string v1, "/ws/oauthsessions/1/newsessionh2?k=android&f=pb&of=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    const-string v0, "oauthsessions/1/newsessionh2"

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 483
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/service/blur/WSRequest;->_writeToParcel(Landroid/os/Parcel;I)V

    .line 484
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mResp1:Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response1;->writeToParcel(Landroid/os/Parcel;I)V

    .line 485
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mK:[B

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mK:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mK:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mM:[B

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mM:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget-object v0, p0, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Request1;->mM:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 497
    :goto_1
    return-void

    .line 489
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
