.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1796
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1791
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 1

    .prologue
    .line 1791
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1846
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 3

    .prologue
    .line 1799
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;-><init>()V

    .line 1800
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    .line 1801
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1837
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 3

    .prologue
    .line 1850
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    if-nez v1, :cond_0

    .line 1851
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1854
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    .line 1855
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    .line 1856
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    if-nez v0, :cond_0

    .line 1810
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1813
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    .line 1814
    return-object p0
.end method

.method public clearAccountInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1911
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .line 1912
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1948
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 1949
    return-object p0
.end method

.method public clearNewAccountSignature()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasNewAccountSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 2003
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 2004
    return-object p0
.end method

.method public clearRestoreFromDevice()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1965
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasRestoreFromDevice:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1966
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->restoreFromDevice_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1967
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1873
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$5902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1874
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;I)I

    .line 1875
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2

    .prologue
    .line 1818
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

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
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    .locals 1

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1

    .prologue
    .line 1827
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1823
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNewAccountSignature()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    .locals 1

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->getNewAccountSignature()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public getRestoreFromDevice()Z
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->getRestoreFromDevice()Z

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasAccountInfo()Z
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasAccountInfo()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasNewAccountSignature()Z
    .locals 1

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasNewAccountSignature()Z

    move-result v0

    return v0
.end method

.method public hasRestoreFromDevice()Z
    .locals 1

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasRestoreFromDevice()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1791
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasAccountInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1901
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .line 1906
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1907
    return-object p0

    .line 1904
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1938
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 1943
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1944
    return-object p0

    .line 1941
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    goto :goto_0
.end method

.method public mergeNewAccountSignature(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasNewAccountSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1993
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 1998
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasNewAccountSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1999
    return-object p0

    .line 1996
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    goto :goto_0
.end method

.method public setAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1895
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .line 1896
    return-object p0
.end method

.method public setAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .prologue
    .line 1886
    if-nez p1, :cond_0

    .line 1887
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1889
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1890
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;

    .line 1891
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1932
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 1933
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 1923
    if-nez p1, :cond_0

    .line 1924
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1926
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1927
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 1928
    return-object p0
.end method

.method public setNewAccountSignature(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasNewAccountSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1987
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 1988
    return-object p0
.end method

.method public setNewAccountSignature(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .prologue
    .line 1978
    if-nez p1, :cond_0

    .line 1979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1981
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasNewAccountSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1982
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->newAccountSignature_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;

    .line 1983
    return-object p0
.end method

.method public setRestoreFromDevice(Z)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasRestoreFromDevice:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1961
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->restoreFromDevice_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1962
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$5902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;Z)Z

    .line 1869
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;->access$6002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewAccountRequest;I)I

    .line 1870
    return-object p0
.end method
