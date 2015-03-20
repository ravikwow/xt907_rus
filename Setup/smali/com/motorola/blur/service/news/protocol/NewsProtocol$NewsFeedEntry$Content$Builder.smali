.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5781
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$20700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5776
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20800()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;
    .locals 1

    .prologue
    .line 5776
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5827
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5828
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5831
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;
    .locals 3

    .prologue
    .line 5784
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;-><init>()V

    .line 5785
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    .line 5786
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    .locals 1

    .prologue
    .line 5819
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5820
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5822
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    .locals 3

    .prologue
    .line 5835
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    if-nez v1, :cond_0

    .line 5836
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5839
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    .line 5840
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    .line 5841
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;
    .locals 2

    .prologue
    .line 5794
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    if-nez v0, :cond_0

    .line 5795
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5798
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    .line 5799
    return-object p0
.end method

.method public clearData()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;
    .locals 2

    .prologue
    .line 5861
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->access$21002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;Z)Z

    .line 5862
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->getData()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->data_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->access$21102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;Ljava/lang/String;)Ljava/lang/String;

    .line 5863
    return-object p0
.end method

.method public clearSrc()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;
    .locals 2

    .prologue
    .line 5903
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->hasSrc:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->access$21402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;Z)Z

    .line 5904
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->getSrc()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->src_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->access$21502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;Ljava/lang/String;)Ljava/lang/String;

    .line 5905
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;
    .locals 2

    .prologue
    .line 5882
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->access$21202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;Z)Z

    .line 5883
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->getType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->type_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->access$21302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;Ljava/lang/String;)Ljava/lang/String;

    .line 5884
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;
    .locals 2

    .prologue
    .line 5803
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

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
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5850
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    .locals 1

    .prologue
    .line 5812
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5808
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5892
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->getSrc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5871
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 5847
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasSrc()Z
    .locals 1

    .prologue
    .line 5889
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->hasSrc()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 5868
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->hasType()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5776
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    .locals 1

    .prologue
    .line 5790
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5816
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5853
    if-nez p1, :cond_0

    .line 5854
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5856
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->access$21002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;Z)Z

    .line 5857
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->data_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->access$21102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;Ljava/lang/String;)Ljava/lang/String;

    .line 5858
    return-object p0
.end method

.method public setSrc(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5895
    if-nez p1, :cond_0

    .line 5896
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5898
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->hasSrc:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->access$21402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;Z)Z

    .line 5899
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->src_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->access$21502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;Ljava/lang/String;)Ljava/lang/String;

    .line 5900
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5874
    if-nez p1, :cond_0

    .line 5875
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5877
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->access$21202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;Z)Z

    .line 5878
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->type_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->access$21302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;Ljava/lang/String;)Ljava/lang/String;

    .line 5879
    return-object p0
.end method
