.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2372
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$9400(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2367
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9500()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 2367
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2418
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2422
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 3

    .prologue
    .line 2375
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;-><init>()V

    .line 2376
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    .line 2377
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2411
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2413
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 3

    .prologue
    .line 2426
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    if-nez v1, :cond_0

    .line 2427
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2430
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    .line 2431
    .local v0, "returnMe":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    .line 2432
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    if-nez v0, :cond_0

    .line 2386
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2389
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    .line 2390
    return-object p0
.end method

.method public clearAppData()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasAppData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2537
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getAppData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->appData_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2538
    return-object p0
.end method

.method public clearChangesSinceAnchor()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasChangesSinceAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2495
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getChangesSinceAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->changesSinceAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 2496
    return-object p0
.end method

.method public clearCurrentServerAnchor()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasCurrentServerAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2516
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getCurrentServerAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->currentServerAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 2517
    return-object p0
.end method

.method public clearDataFormat()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 2593
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasDataFormat:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$11102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2594
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getDataFormat()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->dataFormat_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$11202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 2595
    return-object p0
.end method

.method public clearExtendedStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasExtendedStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$9902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2474
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getExtendedStatus()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->extendedStatus_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 2475
    return-object p0
.end method

.method public clearIsMore()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2554
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasIsMore:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2555
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->isMore_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2556
    return-object p0
.end method

.method public clearStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$9702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2453
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    sget-object v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->OK:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$9802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 2454
    return-object p0
.end method

.method public clearSyncAppId()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2572
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasSyncAppId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2573
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->syncAppId_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$11002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;I)I

    .line 2574
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 2394
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

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
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2525
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getAppData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getChangesSinceAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getChangesSinceAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentServerAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2504
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getCurrentServerAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2582
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getDataFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1

    .prologue
    .line 2403
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2399
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getExtendedStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsMore()Z
    .locals 1

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getIsMore()Z

    move-result v0

    return v0
.end method

.method public getStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 1

    .prologue
    .line 2441
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAppId()I
    .locals 1

    .prologue
    .line 2564
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->getSyncAppId()I

    move-result v0

    return v0
.end method

.method public hasAppData()Z
    .locals 1

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasAppData()Z

    move-result v0

    return v0
.end method

.method public hasChangesSinceAnchor()Z
    .locals 1

    .prologue
    .line 2480
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasChangesSinceAnchor()Z

    move-result v0

    return v0
.end method

.method public hasCurrentServerAnchor()Z
    .locals 1

    .prologue
    .line 2501
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasCurrentServerAnchor()Z

    move-result v0

    return v0
.end method

.method public hasDataFormat()Z
    .locals 1

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasDataFormat()Z

    move-result v0

    return v0
.end method

.method public hasExtendedStatus()Z
    .locals 1

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasExtendedStatus()Z

    move-result v0

    return v0
.end method

.method public hasIsMore()Z
    .locals 1

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasIsMore()Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasStatus()Z

    move-result v0

    return v0
.end method

.method public hasSyncAppId()Z
    .locals 1

    .prologue
    .line 2561
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasSyncAppId()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2367
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;
    .locals 1

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAppData(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2528
    if-nez p1, :cond_0

    .line 2529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2531
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasAppData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2532
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->appData_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2533
    return-object p0
.end method

.method public setChangesSinceAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2486
    if-nez p1, :cond_0

    .line 2487
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2489
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasChangesSinceAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2490
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->changesSinceAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 2491
    return-object p0
.end method

.method public setCurrentServerAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2507
    if-nez p1, :cond_0

    .line 2508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2510
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasCurrentServerAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2511
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->currentServerAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 2512
    return-object p0
.end method

.method public setDataFormat(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2585
    if-nez p1, :cond_0

    .line 2586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2588
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasDataFormat:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$11102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2589
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->dataFormat_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$11202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 2590
    return-object p0
.end method

.method public setExtendedStatus(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2465
    if-nez p1, :cond_0

    .line 2466
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2468
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasExtendedStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$9902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2469
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->extendedStatus_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 2470
    return-object p0
.end method

.method public setIsMore(Z)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasIsMore:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2550
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->isMore_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2551
    return-object p0
.end method

.method public setStatus(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .prologue
    .line 2444
    if-nez p1, :cond_0

    .line 2445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2447
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$9702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2448
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$9802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 2449
    return-object p0
.end method

.method public setSyncAppId(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2567
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->hasSyncAppId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$10902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;Z)Z

    .line 2568
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->syncAppId_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;->access$11002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleUpdateResponse;I)I

    .line 2569
    return-object p0
.end method
