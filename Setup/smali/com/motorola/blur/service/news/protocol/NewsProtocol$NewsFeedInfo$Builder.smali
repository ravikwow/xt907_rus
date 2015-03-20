.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4374
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$15200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4369
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15300()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 1

    .prologue
    .line 4369
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4420
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4421
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4424
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 3

    .prologue
    .line 4377
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;-><init>()V

    .line 4378
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .line 4379
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1

    .prologue
    .line 4412
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4413
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4415
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 3

    .prologue
    .line 4428
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    if-nez v1, :cond_0

    .line 4429
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4432
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .line 4433
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .line 4434
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2

    .prologue
    .line 4387
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    if-nez v0, :cond_0

    .line 4388
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4391
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .line 4392
    return-object p0
.end method

.method public clearBlurFeedId()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 3

    .prologue
    .line 4472
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasBlurFeedId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$15702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4473
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->blurFeedId_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$15802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;J)J

    .line 4474
    return-object p0
.end method

.method public clearDescription()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2

    .prologue
    .line 4514
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasDescription:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4515
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->description_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4516
    return-object p0
.end method

.method public clearEtag()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2

    .prologue
    .line 4595
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasEtag:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4596
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getEtag()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->etag_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$17002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4597
    return-object p0
.end method

.method public clearHtmlUrl()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2

    .prologue
    .line 4637
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasHtmlUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$17302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4638
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getHtmlUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->htmlUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$17402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4639
    return-object p0
.end method

.method public clearImageUrl()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2

    .prologue
    .line 4556
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasImageUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4557
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->imageUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4558
    return-object p0
.end method

.method public clearLanguage()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2

    .prologue
    .line 4535
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasLanguage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4536
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->language_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4537
    return-object p0
.end method

.method public clearLastModified()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2

    .prologue
    .line 4616
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasLastModified:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$17102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4617
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getLastModified()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->lastModified_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$17202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4618
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2

    .prologue
    .line 4493
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$15902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4494
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4495
    return-object p0
.end method

.method public clearTtl()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4574
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasTtl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4575
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->ttl_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;I)I

    .line 4576
    return-object p0
.end method

.method public clearXmlUrl()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2

    .prologue
    .line 4454
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasXmlUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$15502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4455
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getXmlUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->xmlUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$15602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4456
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2

    .prologue
    .line 4396
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

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
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBlurFeedId()J
    .locals 2

    .prologue
    .line 4464
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getBlurFeedId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1

    .prologue
    .line 4405
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4503
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4401
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4584
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getEtag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4626
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4545
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4524
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4605
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getLastModified()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4482
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTtl()I
    .locals 1

    .prologue
    .line 4566
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getTtl()I

    move-result v0

    return v0
.end method

.method public getXmlUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4443
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getXmlUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBlurFeedId()Z
    .locals 1

    .prologue
    .line 4461
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasBlurFeedId()Z

    move-result v0

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 4500
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasDescription()Z

    move-result v0

    return v0
.end method

.method public hasEtag()Z
    .locals 1

    .prologue
    .line 4581
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasEtag()Z

    move-result v0

    return v0
.end method

.method public hasHtmlUrl()Z
    .locals 1

    .prologue
    .line 4623
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasHtmlUrl()Z

    move-result v0

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 4542
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasImageUrl()Z

    move-result v0

    return v0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 4521
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasLanguage()Z

    move-result v0

    return v0
.end method

.method public hasLastModified()Z
    .locals 1

    .prologue
    .line 4602
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasLastModified()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 4479
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasTtl()Z
    .locals 1

    .prologue
    .line 4563
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasTtl()Z

    move-result v0

    return v0
.end method

.method public hasXmlUrl()Z
    .locals 1

    .prologue
    .line 4440
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasXmlUrl()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1

    .prologue
    .line 4383
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4409
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setBlurFeedId(J)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 4467
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasBlurFeedId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$15702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4468
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->blurFeedId_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$15802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;J)J

    .line 4469
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4506
    if-nez p1, :cond_0

    .line 4507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4509
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasDescription:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4510
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->description_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4511
    return-object p0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4587
    if-nez p1, :cond_0

    .line 4588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4590
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasEtag:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4591
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->etag_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$17002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4592
    return-object p0
.end method

.method public setHtmlUrl(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4629
    if-nez p1, :cond_0

    .line 4630
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4632
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasHtmlUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$17302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4633
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->htmlUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$17402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4634
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4548
    if-nez p1, :cond_0

    .line 4549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4551
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasImageUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4552
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->imageUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4553
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4527
    if-nez p1, :cond_0

    .line 4528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4530
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasLanguage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4531
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->language_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4532
    return-object p0
.end method

.method public setLastModified(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4608
    if-nez p1, :cond_0

    .line 4609
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4611
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasLastModified:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$17102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4612
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->lastModified_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$17202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4613
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4485
    if-nez p1, :cond_0

    .line 4486
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4488
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$15902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4489
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4490
    return-object p0
.end method

.method public setTtl(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 4569
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasTtl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4570
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->ttl_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$16802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;I)I

    .line 4571
    return-object p0
.end method

.method public setXmlUrl(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4446
    if-nez p1, :cond_0

    .line 4447
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4449
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->hasXmlUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$15502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Z)Z

    .line 4450
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->xmlUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->access$15602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 4451
    return-object p0
.end method
