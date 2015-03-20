.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    .locals 1

    .prologue
    .line 438
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    .locals 3

    .prologue
    .line 446
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;-><init>()V

    .line 447
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    .line 448
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;
    .locals 3

    .prologue
    .line 497
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    if-nez v1, :cond_0

    .line 498
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    .line 502
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    .line 503
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    .line 461
    return-object p0
.end method

.method public clearCompressionType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->hasCompressionType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;Z)Z

    .line 584
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->getCompressionType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->compressionType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 585
    return-object p0
.end method

.method public clearLanguage()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->hasLanguage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;Z)Z

    .line 563
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->getLanguage()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->language_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 564
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;Z)Z

    .line 542
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->getType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->type_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 543
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 520
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;Z)Z

    .line 521
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;I)I

    .line 522
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    .locals 2

    .prologue
    .line 465
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

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
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCompressionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;
    .locals 1

    .prologue
    .line 474
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 470
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasCompressionType()Z
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->hasCompressionType()Z

    move-result v0

    return v0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->hasLanguage()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setCompressionType(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->hasCompressionType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;Z)Z

    .line 579
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->compressionType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 580
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 554
    if-nez p1, :cond_0

    .line 555
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->hasLanguage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;Z)Z

    .line 558
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->language_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 559
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 533
    if-nez p1, :cond_0

    .line 534
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;Z)Z

    .line 537
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->type_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 538
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;Z)Z

    .line 516
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;->access$1302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;I)I

    .line 517
    return-object p0
.end method
