.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1786
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1781
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 1

    .prologue
    .line 1781
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1833
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1836
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 3

    .prologue
    .line 1789
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;-><init>()V

    .line 1790
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    .line 1791
    return-object v0
.end method


# virtual methods
.method public addAllContainer(Ljava/lang/Iterable;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;",
            ">;)",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;"
        }
    .end annotation

    .prologue
    .line 1961
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/util/List;)Ljava/util/List;

    .line 1964
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1965
    return-object p0
.end method

.method public addAllFeedDesc(Ljava/lang/Iterable;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;",
            ">;)",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;"
        }
    .end annotation

    .prologue
    .line 2012
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/util/List;)Ljava/util/List;

    .line 2015
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2016
    return-object p0
.end method

.method public addContainer(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/util/List;)Ljava/util/List;

    .line 1956
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1957
    return-object p0
.end method

.method public addContainer(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    .prologue
    .line 1943
    if-nez p1, :cond_0

    .line 1944
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1946
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1947
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/util/List;)Ljava/util/List;

    .line 1949
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1950
    return-object p0
.end method

.method public addFeedDesc(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2005
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/util/List;)Ljava/util/List;

    .line 2007
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2008
    return-object p0
.end method

.method public addFeedDesc(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    .prologue
    .line 1994
    if-nez p1, :cond_0

    .line 1995
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1997
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1998
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/util/List;)Ljava/util/List;

    .line 2000
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2001
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1827
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 3

    .prologue
    .line 1840
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    if-nez v1, :cond_0

    .line 1841
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1844
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1845
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    iget-object v2, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/util/List;)Ljava/util/List;

    .line 1848
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 1849
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    iget-object v2, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/util/List;)Ljava/util/List;

    .line 1852
    :cond_2
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    .line 1853
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    .line 1854
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    if-nez v0, :cond_0

    .line 1800
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1803
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    .line 1804
    return-object p0
.end method

.method public clearBannerUrl()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasBannerUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z

    .line 2040
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->bannerUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;

    .line 2041
    return-object p0
.end method

.method public clearContainer()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/util/List;)Ljava/util/List;

    .line 1969
    return-object p0
.end method

.method public clearDescription()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasDescription:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z

    .line 1917
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getDescription()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->description_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;

    .line 1918
    return-object p0
.end method

.method public clearDisplayName()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasDisplayName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z

    .line 1896
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->displayName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;

    .line 1897
    return-object p0
.end method

.method public clearFavIconUrl()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasFavIconUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z

    .line 2061
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getFavIconUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->favIconUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;

    .line 2062
    return-object p0
.end method

.method public clearFeedDesc()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/util/List;)Ljava/util/List;

    .line 2020
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z

    .line 1875
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;

    .line 1876
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2

    .prologue
    .line 1808
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

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
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContainer(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getContainer(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public getContainerCount()I
    .locals 1

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getContainerCount()I

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
    .line 1923
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1

    .prologue
    .line 1817
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1813
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getFavIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeedDesc(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getFeedDesc(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public getFeedDescCount()I
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getFeedDescCount()I

    move-result v0

    return v0
.end method

.method public getFeedDescList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBannerUrl()Z
    .locals 1

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasBannerUrl()Z

    move-result v0

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasDescription()Z

    move-result v0

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasDisplayName()Z

    move-result v0

    return v0
.end method

.method public hasFavIconUrl()Z
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasFavIconUrl()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasName()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;
    .locals 1

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setBannerUrl(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2031
    if-nez p1, :cond_0

    .line 2032
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2034
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasBannerUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z

    .line 2035
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->bannerUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;

    .line 2036
    return-object p0
.end method

.method public setContainer(ILcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1940
    return-object p0
.end method

.method public setContainer(ILcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    .prologue
    .line 1932
    if-nez p2, :cond_0

    .line 1933
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1935
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->container_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1936
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1908
    if-nez p1, :cond_0

    .line 1909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1911
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasDescription:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z

    .line 1912
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->description_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;

    .line 1913
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1887
    if-nez p1, :cond_0

    .line 1888
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1890
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasDisplayName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z

    .line 1891
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->displayName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;

    .line 1892
    return-object p0
.end method

.method public setFavIconUrl(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2052
    if-nez p1, :cond_0

    .line 2053
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2055
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasFavIconUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z

    .line 2056
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->favIconUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;

    .line 2057
    return-object p0
.end method

.method public setFeedDesc(ILcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1991
    return-object p0
.end method

.method public setFeedDesc(ILcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    .prologue
    .line 1983
    if-nez p2, :cond_0

    .line 1984
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->feedDesc_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1987
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1866
    if-nez p1, :cond_0

    .line 1867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$6902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Z)Z

    .line 1870
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;->access$7002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;Ljava/lang/String;)Ljava/lang/String;

    .line 1871
    return-object p0
.end method
