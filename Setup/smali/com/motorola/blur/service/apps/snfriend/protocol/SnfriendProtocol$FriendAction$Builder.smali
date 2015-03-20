.class public final Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnfriendProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1790
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1785
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 1

    .prologue
    .line 1785
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1836
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1840
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 3

    .prologue
    .line 1793
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;-><init>()V

    .line 1794
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;-><init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    .line 1795
    return-object v0
.end method


# virtual methods
.method public addAllUserParams(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;",
            ">;)",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;"
        }
    .end annotation

    .prologue
    .line 1937
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5700(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1938
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5702(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Ljava/util/List;)Ljava/util/List;

    .line 1940
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5700(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1941
    return-object p0
.end method

.method public addUserParams(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5700(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5702(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Ljava/util/List;)Ljava/util/List;

    .line 1932
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5700(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1933
    return-object p0
.end method

.method public addUserParams(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    .prologue
    .line 1919
    if-nez p1, :cond_0

    .line 1920
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1922
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5700(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1923
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5702(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Ljava/util/List;)Ljava/util/List;

    .line 1925
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5700(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1926
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1831
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 3

    .prologue
    .line 1844
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    if-nez v1, :cond_0

    .line 1845
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1848
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5700(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1849
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5700(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5702(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Ljava/util/List;)Ljava/util/List;

    .line 1852
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    .line 1853
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    .line 1854
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 2

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    if-nez v0, :cond_0

    .line 1804
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1807
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;-><init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    .line 1808
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 2

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$6002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Z)Z

    .line 1893
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$6102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Ljava/lang/String;)Ljava/lang/String;

    .line 1894
    return-object p0
.end method

.method public clearProviderParams()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 2

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasProviderParams:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$6202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Z)Z

    .line 1965
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->getProviderParams()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->providerParams_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$6302(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Ljava/lang/String;)Ljava/lang/String;

    .line 1966
    return-object p0
.end method

.method public clearUserParams()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 2

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5702(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Ljava/util/List;)Ljava/util/List;

    .line 1945
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1871
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5802(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Z)Z

    .line 1872
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;I)I

    .line 1873
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 2

    .prologue
    .line 1812
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

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
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1

    .prologue
    .line 1821
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1817
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->getProviderParams()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserParams(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->getUserParams(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public getUserParamsCount()I
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->getUserParamsCount()I

    move-result v0

    return v0
.end method

.method public getUserParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5700(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasProviderParams()Z
    .locals 1

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasProviderParams()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;
    .locals 1

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1884
    if-nez p1, :cond_0

    .line 1885
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$6002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Z)Z

    .line 1888
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$6102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Ljava/lang/String;)Ljava/lang/String;

    .line 1889
    return-object p0
.end method

.method public setProviderParams(Ljava/lang/String;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1956
    if-nez p1, :cond_0

    .line 1957
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1959
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasProviderParams:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$6202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Z)Z

    .line 1960
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->providerParams_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$6302(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Ljava/lang/String;)Ljava/lang/String;

    .line 1961
    return-object p0
.end method

.method public setUserParams(ILcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5700(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1916
    return-object p0
.end method

.method public setUserParams(ILcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    .prologue
    .line 1908
    if-nez p2, :cond_0

    .line 1909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1911
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5700(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1912
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5802(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;Z)Z

    .line 1867
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;->access$5902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendAction;I)I

    .line 1868
    return-object p0
.end method
