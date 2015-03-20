.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1775
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6800(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1770
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 1

    .prologue
    .line 1770
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1821
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1822
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1825
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 3

    .prologue
    .line 1778
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;-><init>()V

    .line 1779
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    .line 1780
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1814
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1816
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 3

    .prologue
    .line 1829
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    if-nez v1, :cond_0

    .line 1830
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1833
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    .line 1834
    .local v0, "returnMe":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    .line 1835
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    if-nez v0, :cond_0

    .line 1789
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1792
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    .line 1793
    return-object p0
.end method

.method public clearDataFormat()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasDataFormat:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$8302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z

    .line 1979
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getDataFormat()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->dataFormat_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$8402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1980
    return-object p0
.end method

.method public clearExtendedStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasExtendedStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z

    .line 1895
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getExtendedStatus()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->extendedStatus_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1896
    return-object p0
.end method

.method public clearLastClientAnchor()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasLastClientAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z

    .line 1916
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getLastClientAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->lastClientAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1917
    return-object p0
.end method

.method public clearMessageType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasMessageType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$8102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z

    .line 1958
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getMessageType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->messageType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$8202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1959
    return-object p0
.end method

.method public clearMessageVersion()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1852
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasMessageVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z

    .line 1853
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->messageVersion_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;I)I

    .line 1854
    return-object p0
.end method

.method public clearNewServerAnchor()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasNewServerAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z

    .line 1937
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getNewServerAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newServerAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$8002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1938
    return-object p0
.end method

.method public clearStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z

    .line 1874
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    sget-object v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->OK:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 1875
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2

    .prologue
    .line 1797
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

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
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDataFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getDataFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1

    .prologue
    .line 1806
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1802
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getExtendedStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastClientAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getLastClientAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getMessageType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageVersion()I
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getMessageVersion()I

    move-result v0

    return v0
.end method

.method public getNewServerAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getNewServerAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 1

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->getStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public hasDataFormat()Z
    .locals 1

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasDataFormat()Z

    move-result v0

    return v0
.end method

.method public hasExtendedStatus()Z
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasExtendedStatus()Z

    move-result v0

    return v0
.end method

.method public hasLastClientAnchor()Z
    .locals 1

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasLastClientAnchor()Z

    move-result v0

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasMessageType()Z

    move-result v0

    return v0
.end method

.method public hasMessageVersion()Z
    .locals 1

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasMessageVersion()Z

    move-result v0

    return v0
.end method

.method public hasNewServerAnchor()Z
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasNewServerAnchor()Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasStatus()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;
    .locals 1

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setDataFormat(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1970
    if-nez p1, :cond_0

    .line 1971
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1973
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasDataFormat:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$8302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z

    .line 1974
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->dataFormat_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$8402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1975
    return-object p0
.end method

.method public setExtendedStatus(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1886
    if-nez p1, :cond_0

    .line 1887
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1889
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasExtendedStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z

    .line 1890
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->extendedStatus_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1891
    return-object p0
.end method

.method public setLastClientAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1907
    if-nez p1, :cond_0

    .line 1908
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1910
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasLastClientAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z

    .line 1911
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->lastClientAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1912
    return-object p0
.end method

.method public setMessageType(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1949
    if-nez p1, :cond_0

    .line 1950
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1952
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasMessageType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$8102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z

    .line 1953
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->messageType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$8202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1954
    return-object p0
.end method

.method public setMessageVersion(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasMessageVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z

    .line 1848
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->messageVersion_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;I)I

    .line 1849
    return-object p0
.end method

.method public setNewServerAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1928
    if-nez p1, :cond_0

    .line 1929
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1931
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasNewServerAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z

    .line 1932
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->newServerAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$8002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1933
    return-object p0
.end method

.method public setStatus(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .prologue
    .line 1865
    if-nez p1, :cond_0

    .line 1866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Z)Z

    .line 1869
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;->access$7402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitResponse;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 1870
    return-object p0
.end method
