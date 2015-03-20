.class public final Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SessionsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1435
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5500(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1430
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 1

    .prologue
    .line 1430
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1481
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1485
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 3

    .prologue
    .line 1438
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;-><init>()V

    .line 1439
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    new-instance v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;-><init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .line 1440
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1476
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 3

    .prologue
    .line 1489
    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    if-nez v1, :cond_0

    .line 1490
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1493
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .line 1494
    .local v0, "returnMe":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .line 1495
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 2

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    if-nez v0, :cond_0

    .line 1449
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1452
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;-><init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .line 1453
    return-object p0
.end method

.method public clearAccountInfo()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 2

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$5802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z

    .line 1532
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$5902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 1533
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 2

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z

    .line 1569
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 1570
    return-object p0
.end method

.method public clearSessionInfo()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 2

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z

    .line 1606
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 1607
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 2

    .prologue
    .line 1457
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

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
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1

    .prologue
    .line 1466
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1462
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    .locals 1

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAccountInfo()Z
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasAccountInfo()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasSessionInfo()Z
    .locals 1

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasSessionInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->internalGetResult()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasAccountInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$5900(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1522
    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$5900(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$5902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 1527
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$5802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z

    .line 1528
    return-object p0

    .line 1525
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$5902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6100(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1559
    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6100(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 1564
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z

    .line 1565
    return-object p0

    .line 1562
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    goto :goto_0
.end method

.method public mergeSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasSessionInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6300(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1596
    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6300(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 1601
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z

    .line 1602
    return-object p0

    .line 1599
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    goto :goto_0
.end method

.method public setAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$5802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z

    .line 1516
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$5902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 1517
    return-object p0
.end method

.method public setAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .prologue
    .line 1507
    if-nez p1, :cond_0

    .line 1508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$5802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z

    .line 1511
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$5902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 1512
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z

    .line 1553
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 1554
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .prologue
    .line 1544
    if-nez p1, :cond_0

    .line 1545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z

    .line 1548
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 1549
    return-object p0
.end method

.method public setSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z

    .line 1590
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 1591
    return-object p0
.end method

.method public setSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .prologue
    .line 1581
    if-nez p1, :cond_0

    .line 1582
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Z)Z

    .line 1585
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->access$6302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 1586
    return-object p0
.end method
