.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1444
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1439
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 1

    .prologue
    .line 1439
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1490
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1494
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 3

    .prologue
    .line 1447
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;-><init>()V

    .line 1448
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    .line 1449
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1485
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 3

    .prologue
    .line 1498
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    if-nez v1, :cond_0

    .line 1499
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    .line 1503
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    .line 1504
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 2

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    if-nez v0, :cond_0

    .line 1458
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1461
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    .line 1462
    return-object p0
.end method

.method public clearBlurFeedId()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 2

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasBlurFeedId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$6202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z

    .line 1630
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getBlurFeedId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->blurFeedId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$6302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 1631
    return-object p0
.end method

.method public clearDescription()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 2

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasDescription:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z

    .line 1588
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getDescription()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->description_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 1589
    return-object p0
.end method

.method public clearHtmlUrl()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 2

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasHtmlUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z

    .line 1567
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getHtmlUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->htmlUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 1568
    return-object p0
.end method

.method public clearImageUrl()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 2

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasImageUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$6002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z

    .line 1609
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->imageUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$6102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 1610
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 2

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z

    .line 1525
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 1526
    return-object p0
.end method

.method public clearXmlUrl()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 2

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasXmlUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z

    .line 1546
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getXmlUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->xmlUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 1547
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 2

    .prologue
    .line 1466
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

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
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBlurFeedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getBlurFeedId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1

    .prologue
    .line 1475
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1471
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->getXmlUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBlurFeedId()Z
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasBlurFeedId()Z

    move-result v0

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasDescription()Z

    move-result v0

    return v0
.end method

.method public hasHtmlUrl()Z
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasHtmlUrl()Z

    move-result v0

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasImageUrl()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasXmlUrl()Z
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasXmlUrl()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setBlurFeedId(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1621
    if-nez p1, :cond_0

    .line 1622
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1624
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasBlurFeedId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$6202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z

    .line 1625
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->blurFeedId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$6302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 1626
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1579
    if-nez p1, :cond_0

    .line 1580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1582
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasDescription:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z

    .line 1583
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->description_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 1584
    return-object p0
.end method

.method public setHtmlUrl(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1558
    if-nez p1, :cond_0

    .line 1559
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1561
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasHtmlUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z

    .line 1562
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->htmlUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 1563
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1600
    if-nez p1, :cond_0

    .line 1601
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasImageUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$6002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z

    .line 1604
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->imageUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$6102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 1605
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1516
    if-nez p1, :cond_0

    .line 1517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z

    .line 1520
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 1521
    return-object p0
.end method

.method public setXmlUrl(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1537
    if-nez p1, :cond_0

    .line 1538
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->hasXmlUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Z)Z

    .line 1541
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->xmlUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;->access$5502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 1542
    return-object p0
.end method
