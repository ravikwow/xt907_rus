.class public final Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CaptchaProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .locals 1

    .prologue
    .line 428
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .locals 3

    .prologue
    .line 436
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;-><init>()V

    .line 437
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    .line 438
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 3

    .prologue
    .line 487
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    if-nez v1, :cond_0

    .line 488
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    .line 492
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    .line 493
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    .line 451
    return-object p0
.end method

.method public clearCaptchaInfo()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1402(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Z)Z

    .line 551
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1502(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 552
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1202(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Z)Z

    .line 514
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1302(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;

    .line 515
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .locals 2

    .prologue
    .line 455
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

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
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1

    .prologue
    .line 464
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 460
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public hasCaptchaInfo()Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasCaptchaInfo()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasCaptchaInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1500(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1500(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1502(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 546
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1402(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Z)Z

    .line 547
    return-object p0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1502(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    goto :goto_0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1402(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Z)Z

    .line 535
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1502(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 536
    return-object p0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .prologue
    .line 526
    if-nez p1, :cond_0

    .line 527
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1402(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Z)Z

    .line 530
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1502(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 531
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;

    .prologue
    .line 505
    if-nez p1, :cond_0

    .line 506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1202(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Z)Z

    .line 509
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;->access$1302(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse;Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaResponse$Error;

    .line 510
    return-object p0
.end method