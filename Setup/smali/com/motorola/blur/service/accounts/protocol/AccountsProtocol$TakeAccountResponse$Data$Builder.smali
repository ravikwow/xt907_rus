.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6801
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$22500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6796
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22600()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 1

    .prologue
    .line 6796
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6847
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6848
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6851
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 3

    .prologue
    .line 6804
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;-><init>()V

    .line 6805
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .line 6806
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1

    .prologue
    .line 6839
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6840
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6842
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 3

    .prologue
    .line 6855
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    if-nez v1, :cond_0

    .line 6856
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6859
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .line 6860
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .line 6861
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 2

    .prologue
    .line 6814
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    if-nez v0, :cond_0

    .line 6815
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6818
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .line 6819
    return-object p0
.end method

.method public clearAccountInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 2

    .prologue
    .line 6897
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$22802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z

    .line 6898
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$22902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 6899
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 2

    .prologue
    .line 6934
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z

    .line 6935
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 6936
    return-object p0
.end method

.method public clearSessionInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 2

    .prologue
    .line 6971
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z

    .line 6972
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 6973
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 2

    .prologue
    .line 6823
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

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
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    .locals 1

    .prologue
    .line 6870
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1

    .prologue
    .line 6832
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6828
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1

    .prologue
    .line 6907
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    .locals 1

    .prologue
    .line 6944
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAccountInfo()Z
    .locals 1

    .prologue
    .line 6867
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasAccountInfo()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 6904
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasSessionInfo()Z
    .locals 1

    .prologue
    .line 6941
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasSessionInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 6796
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1

    .prologue
    .line 6810
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6836
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .prologue
    .line 6886
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasAccountInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$22900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6888
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$22900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$22902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 6893
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$22802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z

    .line 6894
    return-object p0

    .line 6891
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$22902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .prologue
    .line 6923
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6925
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 6930
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z

    .line 6931
    return-object p0

    .line 6928
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    goto :goto_0
.end method

.method public mergeSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .prologue
    .line 6960
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasSessionInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6962
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 6967
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z

    .line 6968
    return-object p0

    .line 6965
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    goto :goto_0
.end method

.method public setAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;

    .prologue
    .line 6881
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$22802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z

    .line 6882
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$22902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 6883
    return-object p0
.end method

.method public setAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .prologue
    .line 6873
    if-nez p1, :cond_0

    .line 6874
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6876
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$22802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z

    .line 6877
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$22902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 6878
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    .prologue
    .line 6918
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z

    .line 6919
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 6920
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .prologue
    .line 6910
    if-nez p1, :cond_0

    .line 6911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6913
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z

    .line 6914
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 6915
    return-object p0
.end method

.method public setSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;

    .prologue
    .line 6955
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z

    .line 6956
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 6957
    return-object p0
.end method

.method public setSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .prologue
    .line 6947
    if-nez p1, :cond_0

    .line 6948
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6950
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Z)Z

    .line 6951
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->access$23302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 6952
    return-object p0
.end method
