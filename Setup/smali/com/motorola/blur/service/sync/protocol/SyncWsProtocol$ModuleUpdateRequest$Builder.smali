.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2110
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$8700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2105
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 2105
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2156
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2157
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2160
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    .locals 3

    .prologue
    .line 2113
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;-><init>()V

    .line 2114
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    .line 2115
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2149
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2151
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 3

    .prologue
    .line 2164
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    if-nez v1, :cond_0

    .line 2165
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2168
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    .line 2169
    .local v0, "returnMe":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    .line 2170
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    .locals 2

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    if-nez v0, :cond_0

    .line 2124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2127
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    .line 2128
    return-object p0
.end method

.method public clearOptionalData()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    .locals 2

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->hasOptionalData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->access$9002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;Z)Z

    .line 2191
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->getOptionalData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->optionalData_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->access$9102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2192
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    .locals 2

    .prologue
    .line 2132
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

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
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1

    .prologue
    .line 2141
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2137
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOptionalData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->getOptionalData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasOptionalData()Z
    .locals 1

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->hasOptionalData()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;
    .locals 1

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setOptionalData(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2182
    if-nez p1, :cond_0

    .line 2183
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2185
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->hasOptionalData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->access$9002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;Z)Z

    .line 2186
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->optionalData_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;->access$9102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2187
    return-object p0
.end method
