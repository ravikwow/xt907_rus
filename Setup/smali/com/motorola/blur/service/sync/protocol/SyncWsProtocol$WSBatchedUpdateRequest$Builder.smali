.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 3

    .prologue
    .line 511
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;-><init>()V

    .line 512
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    .line 513
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 3

    .prologue
    .line 562
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    if-nez v1, :cond_0

    .line 563
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    .line 567
    .local v0, "returnMe":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    .line 568
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    .line 526
    return-object p0
.end method

.method public clearPageSize()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 642
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasPageSize:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$1902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Z)Z

    .line 643
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->pageSize_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$2002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;I)I

    .line 644
    return-object p0
.end method

.method public clearSyncAnchor()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 3

    .prologue
    .line 603
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$1502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Z)Z

    .line 604
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncAnchor_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$1602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;J)J

    .line 605
    return-object p0
.end method

.method public clearSyncAppId()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 585
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncAppId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$1302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Z)Z

    .line 586
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncAppId_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$1402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;I)I

    .line 587
    return-object p0
.end method

.method public clearSyncDataFormat()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncDataFormat:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$1702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Z)Z

    .line 625
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->getSyncDataFormat()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncDataFormat_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$1802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 626
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 2

    .prologue
    .line 530
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

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
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1

    .prologue
    .line 539
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 535
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->getPageSize()I

    move-result v0

    return v0
.end method

.method public getSyncAnchor()J
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->getSyncAnchor()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSyncAppId()I
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->getSyncAppId()I

    move-result v0

    return v0
.end method

.method public getSyncDataFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->getSyncDataFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPageSize()Z
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasPageSize()Z

    move-result v0

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncAnchor()Z

    move-result v0

    return v0
.end method

.method public hasSyncAppId()Z
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncAppId()Z

    move-result v0

    return v0
.end method

.method public hasSyncDataFormat()Z
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncDataFormat()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setPageSize(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 637
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasPageSize:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$1902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Z)Z

    .line 638
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->pageSize_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$2002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;I)I

    .line 639
    return-object p0
.end method

.method public setSyncAnchor(J)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 598
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$1502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Z)Z

    .line 599
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncAnchor_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$1602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;J)J

    .line 600
    return-object p0
.end method

.method public setSyncAppId(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 580
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncAppId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$1302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Z)Z

    .line 581
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncAppId_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$1402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;I)I

    .line 582
    return-object p0
.end method

.method public setSyncDataFormat(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 616
    if-nez p1, :cond_0

    .line 617
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->hasSyncDataFormat:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$1702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Z)Z

    .line 620
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->syncDataFormat_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;->access$1802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 621
    return-object p0
.end method
