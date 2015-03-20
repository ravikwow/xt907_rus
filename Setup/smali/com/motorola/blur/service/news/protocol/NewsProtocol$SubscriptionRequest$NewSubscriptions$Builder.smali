.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2705
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$10100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2700
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10200()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;
    .locals 1

    .prologue
    .line 2700
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2751
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2752
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2755
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;
    .locals 3

    .prologue
    .line 2708
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;-><init>()V

    .line 2709
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    .line 2710
    return-object v0
.end method


# virtual methods
.method public addAllUrl(Ljava/lang/Iterable;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;"
        }
    .end annotation

    .prologue
    .line 2802
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->url_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->access$10400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2803
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->url_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->access$10402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;Ljava/util/List;)Ljava/util/List;

    .line 2805
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->url_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->access$10400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2806
    return-object p0
.end method

.method public addUrl(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2791
    if-nez p1, :cond_0

    .line 2792
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2794
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->url_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->access$10400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2795
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->url_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->access$10402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;Ljava/util/List;)Ljava/util/List;

    .line 2797
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->url_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->access$10400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2798
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    .locals 1

    .prologue
    .line 2743
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2744
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2746
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    .locals 3

    .prologue
    .line 2759
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    if-nez v1, :cond_0

    .line 2760
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2763
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->url_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->access$10400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 2764
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    iget-object v2, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->url_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->access$10400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->url_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->access$10402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;Ljava/util/List;)Ljava/util/List;

    .line 2767
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    .line 2768
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    .line 2769
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;
    .locals 2

    .prologue
    .line 2718
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    if-nez v0, :cond_0

    .line 2719
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2722
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    .line 2723
    return-object p0
.end method

.method public clearUrl()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;
    .locals 2

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->url_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->access$10402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;Ljava/util/List;)Ljava/util/List;

    .line 2810
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;
    .locals 2

    .prologue
    .line 2727
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

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
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    .locals 1

    .prologue
    .line 2736
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2732
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2781
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlCount()I
    .locals 1

    .prologue
    .line 2778
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->getUrlCount()I

    move-result v0

    return v0
.end method

.method public getUrlList()Ljava/util/List;
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
    .line 2775
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->url_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->access$10400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    .locals 1

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setUrl(ILjava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2784
    if-nez p2, :cond_0

    .line 2785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2787
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->url_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->access$10400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2788
    return-object p0
.end method
