.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4774
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$17700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4769
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17800()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;
    .locals 1

    .prologue
    .line 4769
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4820
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4821
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4824
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;
    .locals 3

    .prologue
    .line 4777
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;-><init>()V

    .line 4778
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    .line 4779
    return-object v0
.end method


# virtual methods
.method public addAllInfo(Ljava/lang/Iterable;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;",
            ">;)",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;"
        }
    .end annotation

    .prologue
    .line 4882
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4883
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;Ljava/util/List;)Ljava/util/List;

    .line 4885
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4886
    return-object p0
.end method

.method public addInfo(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    .prologue
    .line 4874
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4875
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;Ljava/util/List;)Ljava/util/List;

    .line 4877
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4878
    return-object p0
.end method

.method public addInfo(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .prologue
    .line 4864
    if-nez p1, :cond_0

    .line 4865
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4867
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4868
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;Ljava/util/List;)Ljava/util/List;

    .line 4870
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4871
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;
    .locals 1

    .prologue
    .line 4812
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4813
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4815
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;
    .locals 3

    .prologue
    .line 4828
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    if-nez v1, :cond_0

    .line 4829
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4832
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 4833
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    iget-object v2, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;Ljava/util/List;)Ljava/util/List;

    .line 4836
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    .line 4837
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    .line 4838
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;
    .locals 2

    .prologue
    .line 4787
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    if-nez v0, :cond_0

    .line 4788
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4791
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    .line 4792
    return-object p0
.end method

.method public clearInfo()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;
    .locals 2

    .prologue
    .line 4889
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;Ljava/util/List;)Ljava/util/List;

    .line 4890
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;
    .locals 2

    .prologue
    .line 4796
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;

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
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;
    .locals 1

    .prologue
    .line 4805
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4801
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInfo(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4850
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->getInfo(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInfoCount()I
    .locals 1

    .prologue
    .line 4847
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->getInfoCount()I

    move-result v0

    return v0
.end method

.method public getInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4844
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4769
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;
    .locals 1

    .prologue
    .line 4783
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4809
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setInfo(ILcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    .prologue
    .line 4860
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4861
    return-object p0
.end method

.method public setInfo(ILcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .prologue
    .line 4853
    if-nez p2, :cond_0

    .line 4854
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4856
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->info_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;->access$18000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4857
    return-object p0
.end method
