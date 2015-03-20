.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5254
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$19000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5249
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19100()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;
    .locals 1

    .prologue
    .line 5249
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5300
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5301
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5304
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;
    .locals 3

    .prologue
    .line 5257
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;-><init>()V

    .line 5258
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    .line 5259
    return-object v0
.end method


# virtual methods
.method public addAllSubscription(Ljava/lang/Iterable;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;",
            ">;)",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;"
        }
    .end annotation

    .prologue
    .line 5362
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5363
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;Ljava/util/List;)Ljava/util/List;

    .line 5365
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5366
    return-object p0
.end method

.method public addSubscription(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    .prologue
    .line 5354
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5355
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;Ljava/util/List;)Ljava/util/List;

    .line 5357
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5358
    return-object p0
.end method

.method public addSubscription(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    .prologue
    .line 5344
    if-nez p1, :cond_0

    .line 5345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5347
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5348
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;Ljava/util/List;)Ljava/util/List;

    .line 5350
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5351
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    .locals 1

    .prologue
    .line 5292
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5293
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5295
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    .locals 3

    .prologue
    .line 5308
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    if-nez v1, :cond_0

    .line 5309
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5312
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 5313
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    iget-object v2, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;Ljava/util/List;)Ljava/util/List;

    .line 5316
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    .line 5317
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    .line 5318
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;
    .locals 2

    .prologue
    .line 5267
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    if-nez v0, :cond_0

    .line 5268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5271
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    .line 5272
    return-object p0
.end method

.method public clearSubscription()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;
    .locals 2

    .prologue
    .line 5369
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;Ljava/util/List;)Ljava/util/List;

    .line 5370
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;
    .locals 2

    .prologue
    .line 5276
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

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
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    .locals 1

    .prologue
    .line 5285
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5281
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSubscription(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5330
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->getSubscription(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionCount()I
    .locals 1

    .prologue
    .line 5327
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->getSubscriptionCount()I

    move-result v0

    return v0
.end method

.method public getSubscriptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5324
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5249
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    .locals 1

    .prologue
    .line 5263
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5289
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setSubscription(ILcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    .prologue
    .line 5340
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5341
    return-object p0
.end method

.method public setSubscription(ILcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    .prologue
    .line 5333
    if-nez p2, :cond_0

    .line 5334
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5336
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->subscription_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->access$19300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5337
    return-object p0
.end method
