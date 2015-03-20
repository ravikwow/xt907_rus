.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1892
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1887
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 1

    .prologue
    .line 1887
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1938
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1942
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 3

    .prologue
    .line 1895
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;-><init>()V

    .line 1896
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    .line 1897
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1931
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1933
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 3

    .prologue
    .line 1946
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    if-nez v1, :cond_0

    .line 1947
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1950
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    .line 1951
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    .line 1952
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 2

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    if-nez v0, :cond_0

    .line 1906
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1909
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    .line 1910
    return-object p0
.end method

.method public clearFriendId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 2

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasFriendId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$5102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z

    .line 2009
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->getFriendId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->friendId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$5202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Ljava/lang/String;)Ljava/lang/String;

    .line 2010
    return-object p0
.end method

.method public clearHasMood()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2047
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasHasMood:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$5502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z

    .line 2048
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasMood_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$5602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z

    .line 2049
    return-object p0
.end method

.method public clearIsMe()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1987
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasIsMe:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$4902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z

    .line 1988
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->isMe_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$5002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z

    .line 1989
    return-object p0
.end method

.method public clearProviderId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1969
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasProviderId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$4702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z

    .line 1970
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->providerId_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$4802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;I)I

    .line 1971
    return-object p0
.end method

.method public clearSyncAnchor()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 2

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$5302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z

    .line 2030
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->getSyncAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$5402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Ljava/lang/String;)Ljava/lang/String;

    .line 2031
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 2

    .prologue
    .line 1914
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

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
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1

    .prologue
    .line 1923
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1919
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->getFriendId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasMood()Z
    .locals 1

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->getHasMood()Z

    move-result v0

    return v0
.end method

.method public getIsMe()Z
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->getIsMe()Z

    move-result v0

    return v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->getProviderId()I

    move-result v0

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->getSyncAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFriendId()Z
    .locals 1

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasFriendId()Z

    move-result v0

    return v0
.end method

.method public hasHasMood()Z
    .locals 1

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasHasMood()Z

    move-result v0

    return v0
.end method

.method public hasIsMe()Z
    .locals 1

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasIsMe()Z

    move-result v0

    return v0
.end method

.method public hasProviderId()Z
    .locals 1

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasProviderId()Z

    move-result v0

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasSyncAnchor()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1887
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setFriendId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2000
    if-nez p1, :cond_0

    .line 2001
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2003
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasFriendId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$5102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z

    .line 2004
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->friendId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$5202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Ljava/lang/String;)Ljava/lang/String;

    .line 2005
    return-object p0
.end method

.method public setHasMood(Z)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasHasMood:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$5502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z

    .line 2043
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasMood_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$5602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z

    .line 2044
    return-object p0
.end method

.method public setIsMe(Z)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasIsMe:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$4902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z

    .line 1983
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->isMe_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$5002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z

    .line 1984
    return-object p0
.end method

.method public setProviderId(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasProviderId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$4702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z

    .line 1965
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->providerId_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$4802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;I)I

    .line 1966
    return-object p0
.end method

.method public setSyncAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2021
    if-nez p1, :cond_0

    .line 2022
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2024
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$5302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Z)Z

    .line 2025
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;->access$5402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;Ljava/lang/String;)Ljava/lang/String;

    .line 2026
    return-object p0
.end method
