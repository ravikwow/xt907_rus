.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6879
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$25500(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6874
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25600()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;
    .locals 1

    .prologue
    .line 6874
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6925
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6926
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6929
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;
    .locals 3

    .prologue
    .line 6882
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;-><init>()V

    .line 6883
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    .line 6884
    return-object v0
.end method


# virtual methods
.method public addAllEntry(Ljava/lang/Iterable;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;",
            ">;)",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;"
        }
    .end annotation

    .prologue
    .line 6987
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6988
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;Ljava/util/List;)Ljava/util/List;

    .line 6990
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6991
    return-object p0
.end method

.method public addEntry(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    .prologue
    .line 6979
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6980
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;Ljava/util/List;)Ljava/util/List;

    .line 6982
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6983
    return-object p0
.end method

.method public addEntry(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    .prologue
    .line 6969
    if-nez p1, :cond_0

    .line 6970
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6972
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6973
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;Ljava/util/List;)Ljava/util/List;

    .line 6975
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6976
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;
    .locals 1

    .prologue
    .line 6917
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6918
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6920
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;
    .locals 3

    .prologue
    .line 6933
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    if-nez v1, :cond_0

    .line 6934
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6937
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 6938
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    iget-object v2, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;Ljava/util/List;)Ljava/util/List;

    .line 6941
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    .line 6942
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    .line 6943
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;
    .locals 2

    .prologue
    .line 6892
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    if-nez v0, :cond_0

    .line 6893
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6896
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    .line 6897
    return-object p0
.end method

.method public clearEntry()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;
    .locals 2

    .prologue
    .line 6994
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;Ljava/util/List;)Ljava/util/List;

    .line 6995
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;
    .locals 2

    .prologue
    .line 6901
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;

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
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;
    .locals 1

    .prologue
    .line 6910
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6906
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6955
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->getEntry(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public getEntryCount()I
    .locals 1

    .prologue
    .line 6952
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->getEntryCount()I

    move-result v0

    return v0
.end method

.method public getEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6949
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 6874
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;
    .locals 1

    .prologue
    .line 6888
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6914
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setEntry(ILcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    .prologue
    .line 6965
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6966
    return-object p0
.end method

.method public setEntry(ILcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    .prologue
    .line 6958
    if-nez p2, :cond_0

    .line 6959
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6961
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->entry_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;->access$25800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6962
    return-object p0
.end method
