.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3537
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$12800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3532
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12900()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;
    .locals 1

    .prologue
    .line 3532
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3583
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3584
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3587
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;
    .locals 3

    .prologue
    .line 3540
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;-><init>()V

    .line 3541
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    .line 3542
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;
    .locals 1

    .prologue
    .line 3575
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3576
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3578
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;
    .locals 3

    .prologue
    .line 3591
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    if-nez v1, :cond_0

    .line 3592
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3595
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    .line 3596
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    .line 3597
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;
    .locals 2

    .prologue
    .line 3550
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    if-nez v0, :cond_0

    .line 3551
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3554
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    .line 3555
    return-object p0
.end method

.method public clearErrorType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;
    .locals 2

    .prologue
    .line 3638
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->hasErrorType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->access$13302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;Z)Z

    .line 3639
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->BAD_REQUEST:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->errorType_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->access$13402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 3640
    return-object p0
.end method

.method public clearUrl()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;
    .locals 2

    .prologue
    .line 3617
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->hasUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->access$13102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;Z)Z

    .line 3618
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->getUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->url_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->access$13202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 3619
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;
    .locals 2

    .prologue
    .line 3559
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;

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
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;
    .locals 1

    .prologue
    .line 3568
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3564
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getErrorType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    .locals 1

    .prologue
    .line 3627
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->getErrorType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3606
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasErrorType()Z
    .locals 1

    .prologue
    .line 3624
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->hasErrorType()Z

    move-result v0

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 3603
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->hasUrl()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3532
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;
    .locals 1

    .prologue
    .line 3546
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3572
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setErrorType(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .prologue
    .line 3630
    if-nez p1, :cond_0

    .line 3631
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3633
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->hasErrorType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->access$13302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;Z)Z

    .line 3634
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->errorType_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->access$13402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 3635
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3609
    if-nez p1, :cond_0

    .line 3610
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3612
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->hasUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->access$13102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;Z)Z

    .line 3613
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->url_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;->access$13202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 3614
    return-object p0
.end method
