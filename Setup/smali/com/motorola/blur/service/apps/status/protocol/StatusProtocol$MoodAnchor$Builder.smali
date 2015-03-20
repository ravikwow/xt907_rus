.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2200
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2195
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 1

    .prologue
    .line 2195
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2247
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2250
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 3

    .prologue
    .line 2203
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;-><init>()V

    .line 2204
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    .line 2205
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2239
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2241
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 3

    .prologue
    .line 2254
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    if-nez v1, :cond_0

    .line 2255
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2258
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    .line 2259
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    .line 2260
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 2

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    if-nez v0, :cond_0

    .line 2214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2217
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    .line 2218
    return-object p0
.end method

.method public clearFriendId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 2

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasFriendId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z

    .line 2317
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->getFriendId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->friendId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Ljava/lang/String;)Ljava/lang/String;

    .line 2318
    return-object p0
.end method

.method public clearIsMe()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2295
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasIsMe:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z

    .line 2296
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->isMe_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z

    .line 2297
    return-object p0
.end method

.method public clearProviderId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2277
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasProviderId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z

    .line 2278
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->providerId_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;I)I

    .line 2279
    return-object p0
.end method

.method public clearSyncAnchor()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 2

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z

    .line 2338
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->getSyncAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Ljava/lang/String;)Ljava/lang/String;

    .line 2339
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 2

    .prologue
    .line 2222
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

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
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1

    .prologue
    .line 2231
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2227
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->getFriendId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsMe()Z
    .locals 1

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->getIsMe()Z

    move-result v0

    return v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->getProviderId()I

    move-result v0

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->getSyncAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFriendId()Z
    .locals 1

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasFriendId()Z

    move-result v0

    return v0
.end method

.method public hasIsMe()Z
    .locals 1

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasIsMe()Z

    move-result v0

    return v0
.end method

.method public hasProviderId()Z
    .locals 1

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasProviderId()Z

    move-result v0

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasSyncAnchor()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setFriendId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2308
    if-nez p1, :cond_0

    .line 2309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2311
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasFriendId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z

    .line 2312
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->friendId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Ljava/lang/String;)Ljava/lang/String;

    .line 2313
    return-object p0
.end method

.method public setIsMe(Z)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasIsMe:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z

    .line 2291
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->isMe_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z

    .line 2292
    return-object p0
.end method

.method public setProviderId(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasProviderId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z

    .line 2273
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->providerId_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;I)I

    .line 2274
    return-object p0
.end method

.method public setSyncAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2329
    if-nez p1, :cond_0

    .line 2330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2332
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Z)Z

    .line 2333
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;->access$6902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;Ljava/lang/String;)Ljava/lang/String;

    .line 2334
    return-object p0
.end method
