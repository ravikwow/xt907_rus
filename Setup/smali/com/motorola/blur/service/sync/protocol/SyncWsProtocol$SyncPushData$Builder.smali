.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3302
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$13900(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3297
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14000()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 1

    .prologue
    .line 3297
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3348
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3349
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3352
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 3

    .prologue
    .line 3305
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;-><init>()V

    .line 3306
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    new-instance v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    .line 3307
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3341
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3343
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 3

    .prologue
    .line 3356
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    if-nez v1, :cond_0

    .line 3357
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3360
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    .line 3361
    .local v0, "returnMe":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    .line 3362
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 2

    .prologue
    .line 3315
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    if-nez v0, :cond_0

    .line 3316
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3319
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    .line 3320
    return-object p0
.end method

.method public clearChannel()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 2

    .prologue
    .line 3416
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasChannel:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Z)Z

    .line 3417
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->channel_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .line 3418
    return-object p0
.end method

.method public clearServerAnchor()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 3

    .prologue
    .line 3434
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasServerAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Z)Z

    .line 3435
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->serverAnchor_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;J)J

    .line 3436
    return-object p0
.end method

.method public clearSyncAppId()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3379
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasSyncAppId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Z)Z

    .line 3380
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->syncAppId_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;I)I

    .line 3381
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 2

    .prologue
    .line 3324
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

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
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->getChannel()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1

    .prologue
    .line 3333
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3329
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getServerAnchor()J
    .locals 2

    .prologue
    .line 3426
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->getServerAnchor()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSyncAppId()I
    .locals 1

    .prologue
    .line 3371
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->getSyncAppId()I

    move-result v0

    return v0
.end method

.method public hasChannel()Z
    .locals 1

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasChannel()Z

    move-result v0

    return v0
.end method

.method public hasServerAnchor()Z
    .locals 1

    .prologue
    .line 3423
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasServerAnchor()Z

    move-result v0

    return v0
.end method

.method public hasSyncAppId()Z
    .locals 1

    .prologue
    .line 3368
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasSyncAppId()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3297
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;
    .locals 1

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3337
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeChannel(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .prologue
    .line 3405
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->channel_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3407
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->channel_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->newBuilder(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->channel_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .line 3412
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasChannel:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Z)Z

    .line 3413
    return-object p0

    .line 3410
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->channel_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    goto :goto_0
.end method

.method public setChannel(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    .prologue
    .line 3400
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasChannel:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Z)Z

    .line 3401
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    invoke-virtual {p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->channel_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .line 3402
    return-object p0
.end method

.method public setChannel(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .prologue
    .line 3392
    if-nez p1, :cond_0

    .line 3393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3395
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasChannel:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Z)Z

    .line 3396
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->channel_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .line 3397
    return-object p0
.end method

.method public setServerAnchor(J)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 3429
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasServerAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Z)Z

    .line 3430
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->serverAnchor_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;J)J

    .line 3431
    return-object p0
.end method

.method public setSyncAppId(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3374
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->hasSyncAppId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;Z)Z

    .line 3375
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->syncAppId_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;->access$14302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncPushData;I)I

    .line 3376
    return-object p0
.end method
