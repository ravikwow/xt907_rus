.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1458
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 1

    .prologue
    .line 1458
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1509
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1513
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 3

    .prologue
    .line 1466
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;-><init>()V

    .line 1467
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    .line 1468
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1504
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 3

    .prologue
    .line 1517
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    if-nez v1, :cond_0

    .line 1518
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    .line 1522
    .local v0, "returnMe":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    .line 1523
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 2

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    if-nez v0, :cond_0

    .line 1477
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1480
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    .line 1481
    return-object p0
.end method

.method public clearAppData()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 2

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasAppData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$6002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z

    .line 1562
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->getAppData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->appData_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$6102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1563
    return-object p0
.end method

.method public clearIsFullSyncForRecovery()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1579
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasIsFullSyncForRecovery:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$6202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z

    .line 1580
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->isFullSyncForRecovery_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$6302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z

    .line 1581
    return-object p0
.end method

.method public clearMessageType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 2

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasMessageType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$6402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z

    .line 1601
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->getMessageType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->messageType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$6502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1602
    return-object p0
.end method

.method public clearMessageVersion()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1540
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasMessageVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$5802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z

    .line 1541
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->messageVersion_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$5902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;I)I

    .line 1542
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 2

    .prologue
    .line 1485
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

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
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->getAppData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1

    .prologue
    .line 1494
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1490
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIsFullSyncForRecovery()Z
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->getIsFullSyncForRecovery()Z

    move-result v0

    return v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->getMessageType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageVersion()I
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->getMessageVersion()I

    move-result v0

    return v0
.end method

.method public hasAppData()Z
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasAppData()Z

    move-result v0

    return v0
.end method

.method public hasIsFullSyncForRecovery()Z
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasIsFullSyncForRecovery()Z

    move-result v0

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasMessageType()Z

    move-result v0

    return v0
.end method

.method public hasMessageVersion()Z
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasMessageVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAppData(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1553
    if-nez p1, :cond_0

    .line 1554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1556
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasAppData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$6002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z

    .line 1557
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->appData_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$6102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1558
    return-object p0
.end method

.method public setIsFullSyncForRecovery(Z)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasIsFullSyncForRecovery:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$6202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z

    .line 1575
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->isFullSyncForRecovery_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$6302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z

    .line 1576
    return-object p0
.end method

.method public setMessageType(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1592
    if-nez p1, :cond_0

    .line 1593
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasMessageType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$6402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z

    .line 1596
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->messageType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$6502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1597
    return-object p0
.end method

.method public setMessageVersion(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->hasMessageVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$5802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;Z)Z

    .line 1536
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->messageVersion_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;->access$5902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSCommitRequest;I)I

    .line 1537
    return-object p0
.end method
