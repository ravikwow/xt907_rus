.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2991
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$12400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2986
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12500()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 1

    .prologue
    .line 2986
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3037
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3038
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3041
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 3

    .prologue
    .line 2994
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;-><init>()V

    .line 2995
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    .line 2996
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3030
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3032
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 3

    .prologue
    .line 3045
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    if-nez v1, :cond_0

    .line 3046
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3049
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    .line 3050
    .local v0, "returnMe":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    .line 3051
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 2

    .prologue
    .line 3004
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    if-nez v0, :cond_0

    .line 3005
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3008
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    .line 3009
    return-object p0
.end method

.method public clearDataFormat()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 2

    .prologue
    .line 3155
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasDataFormat:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$13502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z

    .line 3156
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getDataFormat()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->dataFormat_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$13602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 3157
    return-object p0
.end method

.method public clearExtendedStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 2

    .prologue
    .line 3092
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasExtendedStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$12902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z

    .line 3093
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getExtendedStatus()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->extendedStatus_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$13002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 3094
    return-object p0
.end method

.method public clearLastClientAnchor()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 2

    .prologue
    .line 3113
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasLastClientAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$13102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z

    .line 3114
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getLastClientAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->lastClientAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$13202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 3115
    return-object p0
.end method

.method public clearNewServerAnchor()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 2

    .prologue
    .line 3134
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasNewServerAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$13302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z

    .line 3135
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getNewServerAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newServerAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$13402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 3136
    return-object p0
.end method

.method public clearStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 2

    .prologue
    .line 3071
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$12702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z

    .line 3072
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    sget-object v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->OK:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$12802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 3073
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 2

    .prologue
    .line 3013
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

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
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDataFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3144
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getDataFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1

    .prologue
    .line 3022
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3018
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3081
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getExtendedStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastClientAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3102
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getLastClientAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewServerAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3123
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getNewServerAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 1

    .prologue
    .line 3060
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->getStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public hasDataFormat()Z
    .locals 1

    .prologue
    .line 3141
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasDataFormat()Z

    move-result v0

    return v0
.end method

.method public hasExtendedStatus()Z
    .locals 1

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasExtendedStatus()Z

    move-result v0

    return v0
.end method

.method public hasLastClientAnchor()Z
    .locals 1

    .prologue
    .line 3099
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasLastClientAnchor()Z

    move-result v0

    return v0
.end method

.method public hasNewServerAnchor()Z
    .locals 1

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasNewServerAnchor()Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 3057
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasStatus()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2986
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;
    .locals 1

    .prologue
    .line 3000
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3026
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setDataFormat(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3147
    if-nez p1, :cond_0

    .line 3148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3150
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasDataFormat:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$13502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z

    .line 3151
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->dataFormat_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$13602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 3152
    return-object p0
.end method

.method public setExtendedStatus(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3084
    if-nez p1, :cond_0

    .line 3085
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3087
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasExtendedStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$12902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z

    .line 3088
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->extendedStatus_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$13002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 3089
    return-object p0
.end method

.method public setLastClientAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3105
    if-nez p1, :cond_0

    .line 3106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3108
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasLastClientAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$13102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z

    .line 3109
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->lastClientAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$13202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 3110
    return-object p0
.end method

.method public setNewServerAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3126
    if-nez p1, :cond_0

    .line 3127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3129
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasNewServerAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$13302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z

    .line 3130
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->newServerAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$13402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 3131
    return-object p0
.end method

.method public setStatus(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .prologue
    .line 3063
    if-nez p1, :cond_0

    .line 3064
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3066
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$12702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Z)Z

    .line 3067
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;->access$12802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitResponse;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 3068
    return-object p0
.end method
