.class public final Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ProvisioningProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1415
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5000(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1410
    invoke-direct {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    .locals 1

    .prologue
    .line 1410
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1461
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1465
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    .locals 3

    .prologue
    .line 1418
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;-><init>()V

    .line 1419
    .local v0, "builder":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    new-instance v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;-><init>(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 1420
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1456
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 3

    .prologue
    .line 1469
    iget-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    if-nez v1, :cond_0

    .line 1470
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 1474
    .local v0, "returnMe":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 1475
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    .locals 2

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    if-nez v0, :cond_0

    .line 1429
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1432
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;-><init>(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 1433
    return-object p0
.end method

.method public clearDeviceID()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    .locals 3

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->hasDeviceID:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->access$5302(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;Z)Z

    .line 1493
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->deviceID_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->access$5402(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;J)J

    .line 1494
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    .locals 2

    .prologue
    .line 1437
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

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
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1

    .prologue
    .line 1446
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1442
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceID()J
    .locals 2

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDeviceID()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasDeviceID()Z
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->hasDeviceID()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->internalGetResult()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setDeviceID(J)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->hasDeviceID:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->access$5302(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;Z)Z

    .line 1488
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->deviceID_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->access$5402(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;J)J

    .line 1489
    return-object p0
.end method
