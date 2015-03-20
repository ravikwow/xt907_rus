.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6460
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$23700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6455
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23800()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 1

    .prologue
    .line 6455
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6506
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6507
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6510
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 3

    .prologue
    .line 6463
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;-><init>()V

    .line 6464
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    .line 6465
    return-object v0
.end method


# virtual methods
.method public addAllLink(Ljava/lang/Iterable;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;",
            ">;)",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;"
        }
    .end annotation

    .prologue
    .line 6699
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6700
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Ljava/util/List;)Ljava/util/List;

    .line 6702
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6703
    return-object p0
.end method

.method public addLink(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    .prologue
    .line 6691
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6692
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Ljava/util/List;)Ljava/util/List;

    .line 6694
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6695
    return-object p0
.end method

.method public addLink(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    .prologue
    .line 6681
    if-nez p1, :cond_0

    .line 6682
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6684
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6685
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Ljava/util/List;)Ljava/util/List;

    .line 6687
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6688
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1

    .prologue
    .line 6498
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6499
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6501
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 3

    .prologue
    .line 6514
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    if-nez v1, :cond_0

    .line 6515
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6518
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 6519
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    iget-object v2, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Ljava/util/List;)Ljava/util/List;

    .line 6522
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    .line 6523
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    .line 6524
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2

    .prologue
    .line 6473
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    if-nez v0, :cond_0

    .line 6474
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6477
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    .line 6478
    return-object p0
.end method

.method public clearBlurFeedId()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 3

    .prologue
    .line 6541
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasBlurFeedId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6542
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->blurFeedId_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;J)J

    .line 6543
    return-object p0
.end method

.method public clearContent()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2

    .prologue
    .line 6654
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasContent:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6655
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->content_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    .line 6656
    return-object p0
.end method

.method public clearEntryId()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2

    .prologue
    .line 6562
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasEntryId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6563
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->getEntryId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->entryId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 6564
    return-object p0
.end method

.method public clearLink()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2

    .prologue
    .line 6706
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Ljava/util/List;)Ljava/util/List;

    .line 6707
    return-object p0
.end method

.method public clearSummary()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2

    .prologue
    .line 6742
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasSummary:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6743
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->summary_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 6744
    return-object p0
.end method

.method public clearTimeStamp()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 3

    .prologue
    .line 6617
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasTimeStamp:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6618
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->timeStamp_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;J)J

    .line 6619
    return-object p0
.end method

.method public clearTitle()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2

    .prologue
    .line 6599
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasTitle:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6600
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->title_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 6601
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2

    .prologue
    .line 6482
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

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
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBlurFeedId()J
    .locals 2

    .prologue
    .line 6533
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->getBlurFeedId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContent()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    .locals 1

    .prologue
    .line 6627
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->getContent()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1

    .prologue
    .line 6491
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6487
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEntryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6551
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->getEntryId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLink(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6667
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->getLink(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCount()I
    .locals 1

    .prologue
    .line 6664
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->getLinkCount()I

    move-result v0

    return v0
.end method

.method public getLinkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6661
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1

    .prologue
    .line 6715
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->getSummary()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 6609
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    .locals 1

    .prologue
    .line 6572
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->getTitle()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    return-object v0
.end method

.method public hasBlurFeedId()Z
    .locals 1

    .prologue
    .line 6530
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasBlurFeedId()Z

    move-result v0

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 6624
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasContent()Z

    move-result v0

    return v0
.end method

.method public hasEntryId()Z
    .locals 1

    .prologue
    .line 6548
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasEntryId()Z

    move-result v0

    return v0
.end method

.method public hasSummary()Z
    .locals 1

    .prologue
    .line 6712
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasSummary()Z

    move-result v0

    return v0
.end method

.method public hasTimeStamp()Z
    .locals 1

    .prologue
    .line 6606
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasTimeStamp()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 6569
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasTitle()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 6455
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1

    .prologue
    .line 6469
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6495
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeContent(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    .prologue
    .line 6643
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->content_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6645
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->content_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->content_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    .line 6650
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasContent:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6651
    return-object p0

    .line 6648
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->content_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    goto :goto_0
.end method

.method public mergeSummary(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .prologue
    .line 6731
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->summary_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6733
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->summary_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->summary_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 6738
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasSummary:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6739
    return-object p0

    .line 6736
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->summary_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    goto :goto_0
.end method

.method public mergeTitle(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .prologue
    .line 6588
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->title_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24600(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6590
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->title_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24600(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->title_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 6595
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasTitle:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6596
    return-object p0

    .line 6593
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->title_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    goto :goto_0
.end method

.method public setBlurFeedId(J)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 6536
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasBlurFeedId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6537
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->blurFeedId_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;J)J

    .line 6538
    return-object p0
.end method

.method public setContent(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    .prologue
    .line 6638
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasContent:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6639
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->content_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    .line 6640
    return-object p0
.end method

.method public setContent(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    .prologue
    .line 6630
    if-nez p1, :cond_0

    .line 6631
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6633
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasContent:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6634
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->content_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    .line 6635
    return-object p0
.end method

.method public setEntryId(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6554
    if-nez p1, :cond_0

    .line 6555
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6557
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasEntryId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6558
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->entryId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Ljava/lang/String;)Ljava/lang/String;

    .line 6559
    return-object p0
.end method

.method public setLink(ILcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    .prologue
    .line 6677
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6678
    return-object p0
.end method

.method public setLink(ILcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    .prologue
    .line 6670
    if-nez p2, :cond_0

    .line 6671
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6673
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->link_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6674
    return-object p0
.end method

.method public setSummary(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    .prologue
    .line 6726
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasSummary:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6727
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->summary_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 6728
    return-object p0
.end method

.method public setSummary(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .prologue
    .line 6718
    if-nez p1, :cond_0

    .line 6719
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6721
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasSummary:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6722
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->summary_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$25202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 6723
    return-object p0
.end method

.method public setTimeStamp(J)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 6612
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasTimeStamp:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6613
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->timeStamp_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;J)J

    .line 6614
    return-object p0
.end method

.method public setTitle(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    .prologue
    .line 6583
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasTitle:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6584
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->title_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 6585
    return-object p0
.end method

.method public setTitle(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .prologue
    .line 6575
    if-nez p1, :cond_0

    .line 6576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6578
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->hasTitle:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Z)Z

    .line 6579
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->title_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;->access$24602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    .line 6580
    return-object p0
.end method
