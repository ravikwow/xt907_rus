.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6386
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$21200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6381
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21300()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 1

    .prologue
    .line 6381
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6432
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6433
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6436
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 3

    .prologue
    .line 6389
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;-><init>()V

    .line 6390
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    .line 6391
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1

    .prologue
    .line 6424
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6425
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6427
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 3

    .prologue
    .line 6440
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    if-nez v1, :cond_0

    .line 6441
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6444
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    .line 6445
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    .line 6446
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 2

    .prologue
    .line 6399
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    if-nez v0, :cond_0

    .line 6400
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6403
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    .line 6404
    return-object p0
.end method

.method public clearAccountInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 2

    .prologue
    .line 6482
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z

    .line 6483
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .line 6484
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 2

    .prologue
    .line 6519
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z

    .line 6520
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 6521
    return-object p0
.end method

.method public clearTakeAccountSignature()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 2

    .prologue
    .line 6556
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasTakeAccountSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z

    .line 6557
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->takeAccountSignature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$22002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 6558
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 2

    .prologue
    .line 6408
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

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
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    .locals 1

    .prologue
    .line 6455
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1

    .prologue
    .line 6417
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6413
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 6492
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTakeAccountSignature()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1

    .prologue
    .line 6529
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->getTakeAccountSignature()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public hasAccountInfo()Z
    .locals 1

    .prologue
    .line 6452
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasAccountInfo()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 6489
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasTakeAccountSignature()Z
    .locals 1

    .prologue
    .line 6526
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasTakeAccountSignature()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 6381
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;
    .locals 1

    .prologue
    .line 6395
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6421
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .prologue
    .line 6471
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasAccountInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6473
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .line 6478
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z

    .line 6479
    return-object p0

    .line 6476
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 6508
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6510
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 6515
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z

    .line 6516
    return-object p0

    .line 6513
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    goto :goto_0
.end method

.method public mergeTakeAccountSignature(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .prologue
    .line 6545
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasTakeAccountSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->takeAccountSignature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$22000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6547
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->takeAccountSignature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$22000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->takeAccountSignature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$22002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 6552
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasTakeAccountSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z

    .line 6553
    return-object p0

    .line 6550
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->takeAccountSignature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$22002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    goto :goto_0
.end method

.method public setAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;

    .prologue
    .line 6466
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z

    .line 6467
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .line 6468
    return-object p0
.end method

.method public setAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .prologue
    .line 6458
    if-nez p1, :cond_0

    .line 6459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6461
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z

    .line 6462
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .line 6463
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .prologue
    .line 6503
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z

    .line 6504
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 6505
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 6495
    if-nez p1, :cond_0

    .line 6496
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6498
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z

    .line 6499
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 6500
    return-object p0
.end method

.method public setTakeAccountSignature(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    .prologue
    .line 6540
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasTakeAccountSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z

    .line 6541
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->takeAccountSignature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$22002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 6542
    return-object p0
.end method

.method public setTakeAccountSignature(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .prologue
    .line 6532
    if-nez p1, :cond_0

    .line 6533
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6535
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->hasTakeAccountSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$21902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Z)Z

    .line 6536
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->takeAccountSignature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;->access$22002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountRequest;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 6537
    return-object p0
.end method
