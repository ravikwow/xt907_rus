.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2219
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$7900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2214
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 1

    .prologue
    .line 2214
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2265
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2266
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2269
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 3

    .prologue
    .line 2222
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;-><init>()V

    .line 2223
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .line 2224
    return-object v0
.end method


# virtual methods
.method public addAllContainer(Ljava/lang/Iterable;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;",
            ">;)",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;"
        }
    .end annotation

    .prologue
    .line 2450
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2451
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/util/List;)Ljava/util/List;

    .line 2453
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2454
    return-object p0
.end method

.method public addContainer(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2443
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/util/List;)Ljava/util/List;

    .line 2445
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2446
    return-object p0
.end method

.method public addContainer(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    .prologue
    .line 2432
    if-nez p1, :cond_0

    .line 2433
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2435
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2436
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/util/List;)Ljava/util/List;

    .line 2438
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2439
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2258
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2260
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 3

    .prologue
    .line 2273
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    if-nez v1, :cond_0

    .line 2274
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2277
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 2278
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    iget-object v2, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/util/List;)Ljava/util/List;

    .line 2281
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .line 2282
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .line 2283
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    if-nez v0, :cond_0

    .line 2233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2236
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    .line 2237
    return-object p0
.end method

.method public clearBannerUrl()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasBannerUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$9102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2385
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->bannerUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$9202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;

    .line 2386
    return-object p0
.end method

.method public clearContainer()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/util/List;)Ljava/util/List;

    .line 2458
    return-object p0
.end method

.method public clearDescription()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasDescription:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2364
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDescription()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->description_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$9002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;

    .line 2365
    return-object p0
.end method

.method public clearDisplayName()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasDisplayName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2343
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->displayName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;

    .line 2344
    return-object p0
.end method

.method public clearFavIconUrl()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasFavIconUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$9302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2406
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getFavIconUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->favIconUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$9402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;

    .line 2407
    return-object p0
.end method

.method public clearIsBundle()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2474
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasIsBundle:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$9502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2475
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->isBundle_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$9602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2476
    return-object p0
.end method

.method public clearLastModified()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 3

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasLastModified:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2301
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->lastModified_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;J)J

    .line 2302
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2322
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;

    .line 2323
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2

    .prologue
    .line 2241
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

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
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContainer(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getContainer(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public getContainerCount()I
    .locals 1

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getContainerCount()I

    move-result v0

    return v0
.end method

.method public getContainerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1

    .prologue
    .line 2250
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2246
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getFavIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsBundle()Z
    .locals 1

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getIsBundle()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBannerUrl()Z
    .locals 1

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasBannerUrl()Z

    move-result v0

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasDescription()Z

    move-result v0

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasDisplayName()Z

    move-result v0

    return v0
.end method

.method public hasFavIconUrl()Z
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasFavIconUrl()Z

    move-result v0

    return v0
.end method

.method public hasIsBundle()Z
    .locals 1

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasIsBundle()Z

    move-result v0

    return v0
.end method

.method public hasLastModified()Z
    .locals 1

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasLastModified()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasName()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2214
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;
    .locals 1

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setBannerUrl(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2376
    if-nez p1, :cond_0

    .line 2377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2379
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasBannerUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$9102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2380
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->bannerUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$9202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;

    .line 2381
    return-object p0
.end method

.method public setContainer(ILcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2429
    return-object p0
.end method

.method public setContainer(ILcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    .prologue
    .line 2421
    if-nez p2, :cond_0

    .line 2422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2424
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2425
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2355
    if-nez p1, :cond_0

    .line 2356
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2358
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasDescription:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2359
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->description_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$9002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;

    .line 2360
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2334
    if-nez p1, :cond_0

    .line 2335
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2337
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasDisplayName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2338
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->displayName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;

    .line 2339
    return-object p0
.end method

.method public setFavIconUrl(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2397
    if-nez p1, :cond_0

    .line 2398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2400
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasFavIconUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$9302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2401
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->favIconUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$9402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;

    .line 2402
    return-object p0
.end method

.method public setIsBundle(Z)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasIsBundle:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$9502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2470
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->isBundle_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$9602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2471
    return-object p0
.end method

.method public setLastModified(J)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasLastModified:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2296
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->lastModified_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;J)J

    .line 2297
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2313
    if-nez p1, :cond_0

    .line 2314
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2316
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Z)Z

    .line 2317
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;->access$8602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;Ljava/lang/String;)Ljava/lang/String;

    .line 2318
    return-object p0
.end method
