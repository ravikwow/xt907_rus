.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 1

    .prologue
    .line 551
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 3

    .prologue
    .line 559
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;-><init>()V

    .line 560
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;-><init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    .line 561
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 3

    .prologue
    .line 610
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    if-nez v1, :cond_0

    .line 611
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    .line 615
    .local v0, "returnMe":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    .line 616
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    if-nez v0, :cond_0

    .line 570
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;-><init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    .line 574
    return-object p0
.end method

.method public clearCaptchaInfo()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z

    .line 711
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 712
    return-object p0
.end method

.method public clearCloud()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCloud:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z

    .line 674
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 675
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$1802(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z

    .line 637
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    sget-object v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$1902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    .line 638
    return-object p0
.end method

.method public clearNewAccountSignature()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasNewAccountSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z

    .line 748
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 749
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2

    .prologue
    .line 578
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCloud()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->getCloud()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1

    .prologue
    .line 587
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 583
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->getError()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getNewAccountSignature()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->getNewAccountSignature()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public hasCaptchaInfo()Z
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCaptchaInfo()Z

    move-result v0

    return v0
.end method

.method public hasCloud()Z
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCloud()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasNewAccountSignature()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasNewAccountSignature()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCaptchaInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2300(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2300(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 706
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z

    .line 707
    return-object p0

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    goto :goto_0
.end method

.method public mergeCloud(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCloud()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2100(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2100(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 669
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCloud:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z

    .line 670
    return-object p0

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    goto :goto_0
.end method

.method public mergeNewAccountSignature(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasNewAccountSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2500(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2500(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 743
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasNewAccountSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z

    .line 744
    return-object p0

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    goto :goto_0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z

    .line 695
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 696
    return-object p0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .prologue
    .line 686
    if-nez p1, :cond_0

    .line 687
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z

    .line 690
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 691
    return-object p0
.end method

.method public setCloud(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    .prologue
    .line 657
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCloud:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z

    .line 658
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 659
    return-object p0
.end method

.method public setCloud(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .prologue
    .line 649
    if-nez p1, :cond_0

    .line 650
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasCloud:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z

    .line 653
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 654
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    .prologue
    .line 628
    if-nez p1, :cond_0

    .line 629
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$1802(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z

    .line 632
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$1902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    .line 633
    return-object p0
.end method

.method public setNewAccountSignature(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasNewAccountSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z

    .line 732
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 733
    return-object p0
.end method

.method public setNewAccountSignature(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .prologue
    .line 723
    if-nez p1, :cond_0

    .line 724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->hasNewAccountSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Z)Z

    .line 727
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->access$2502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 728
    return-object p0
.end method
