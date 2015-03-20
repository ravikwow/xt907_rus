.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 1

    .prologue
    .line 764
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 819
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 3

    .prologue
    .line 772
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;-><init>()V

    .line 773
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .line 774
    return-object v0
.end method


# virtual methods
.method public addAllType(Ljava/lang/Iterable;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;"
        }
    .end annotation

    .prologue
    .line 866
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Ljava/util/List;)Ljava/util/List;

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 870
    return-object p0
.end method

.method public addType(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 855
    if-nez p1, :cond_0

    .line 856
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Ljava/util/List;)Ljava/util/List;

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 810
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 3

    .prologue
    .line 823
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    if-nez v1, :cond_0

    .line 824
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 828
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    iget-object v2, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Ljava/util/List;)Ljava/util/List;

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .line 832
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .line 833
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .line 787
    return-object p0
.end method

.method public clearCompressedFeedList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasCompressedFeedList:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$3202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Z)Z

    .line 952
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getCompressedFeedList()Lcom/google/protobuf/ByteString;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->compressedFeedList_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$3302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 953
    return-object p0
.end method

.method public clearCompressionType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 2

    .prologue
    .line 930
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasCompressionType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$3002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Z)Z

    .line 931
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getCompressionType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->compressionType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$3102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Ljava/lang/String;)Ljava/lang/String;

    .line 932
    return-object p0
.end method

.method public clearFeedList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasFeedList:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Z)Z

    .line 910
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->feedList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .line 911
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Ljava/util/List;)Ljava/util/List;

    .line 874
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 2

    .prologue
    .line 791
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

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
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCompressedFeedList()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getCompressedFeedList()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCompressionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getCompressionType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1

    .prologue
    .line 800
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 796
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFeedList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getFeedList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 845
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeCount()I
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getTypeCount()I

    move-result v0

    return v0
.end method

.method public getTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 839
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCompressedFeedList()Z
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasCompressedFeedList()Z

    move-result v0

    return v0
.end method

.method public hasCompressionType()Z
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasCompressionType()Z

    move-result v0

    return v0
.end method

.method public hasFeedList()Z
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasFeedList()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFeedList(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .prologue
    .line 898
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasFeedList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->feedList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->feedList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->feedList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .line 905
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasFeedList:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Z)Z

    .line 906
    return-object p0

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->feedList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    goto :goto_0
.end method

.method public setCompressedFeedList(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 943
    if-nez p1, :cond_0

    .line 944
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasCompressedFeedList:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$3202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Z)Z

    .line 947
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->compressedFeedList_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$3302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 948
    return-object p0
.end method

.method public setCompressionType(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 922
    if-nez p1, :cond_0

    .line 923
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasCompressionType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$3002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Z)Z

    .line 926
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->compressionType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$3102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Ljava/lang/String;)Ljava/lang/String;

    .line 927
    return-object p0
.end method

.method public setFeedList(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    .prologue
    .line 893
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasFeedList:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Z)Z

    .line 894
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->feedList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .line 895
    return-object p0
.end method

.method public setFeedList(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .prologue
    .line 885
    if-nez p1, :cond_0

    .line 886
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->hasFeedList:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Z)Z

    .line 889
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->feedList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .line 890
    return-object p0
.end method

.method public setType(ILjava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 848
    if-nez p2, :cond_0

    .line 849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->type_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->access$2700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 852
    return-object p0
.end method
