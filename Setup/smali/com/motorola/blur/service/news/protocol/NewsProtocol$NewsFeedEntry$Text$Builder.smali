.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5534
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$19800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5529
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19900()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    .locals 1

    .prologue
    .line 5529
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5580
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5581
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5584
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    .locals 3

    .prologue
    .line 5537
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;-><init>()V

    .line 5538
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 5539
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1

    .prologue
    .line 5572
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5573
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5575
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 3

    .prologue
    .line 5588
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    if-nez v1, :cond_0

    .line 5589
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5592
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 5593
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 5594
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    .locals 2

    .prologue
    .line 5547
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    if-nez v0, :cond_0

    .line 5548
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5551
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 5552
    return-object p0
.end method

.method public clearData()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    .locals 2

    .prologue
    .line 5614
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->access$20102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;Z)Z

    .line 5615
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getData()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->data_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->access$20202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;Ljava/lang/String;)Ljava/lang/String;

    .line 5616
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    .locals 2

    .prologue
    .line 5635
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->access$20302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;Z)Z

    .line 5636
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->type_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->access$20402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;Ljava/lang/String;)Ljava/lang/String;

    .line 5637
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    .locals 2

    .prologue
    .line 5556
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

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
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5603
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1

    .prologue
    .line 5565
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5561
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5624
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 5600
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 5621
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->hasType()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5529
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1

    .prologue
    .line 5543
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5569
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5606
    if-nez p1, :cond_0

    .line 5607
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5609
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->access$20102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;Z)Z

    .line 5610
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->data_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->access$20202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;Ljava/lang/String;)Ljava/lang/String;

    .line 5611
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5627
    if-nez p1, :cond_0

    .line 5628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5630
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->access$20302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;Z)Z

    .line 5631
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->type_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->access$20402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;Ljava/lang/String;)Ljava/lang/String;

    .line 5632
    return-object p0
.end method
