.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4706
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$15000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4701
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15100()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 1

    .prologue
    .line 4701
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4753
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4756
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 3

    .prologue
    .line 4709
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;-><init>()V

    .line 4710
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    .line 4711
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1

    .prologue
    .line 4744
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4745
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4747
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 3

    .prologue
    .line 4760
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    if-nez v1, :cond_0

    .line 4761
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4764
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    .line 4765
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    .line 4766
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 2

    .prologue
    .line 4719
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    if-nez v0, :cond_0

    .line 4720
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4723
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    .line 4724
    return-object p0
.end method

.method public clearCaptchaInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 2

    .prologue
    .line 4839
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z

    .line 4840
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 4841
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 2

    .prologue
    .line 4802
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z

    .line 4803
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 4804
    return-object p0
.end method

.method public clearProviderCredentialsInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 2

    .prologue
    .line 4876
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasProviderCredentialsInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z

    .line 4877
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->providerCredentialsInfo_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    .line 4878
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 2

    .prologue
    .line 4728
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

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
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 1

    .prologue
    .line 4812
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1

    .prologue
    .line 4737
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4733
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 4775
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getProviderCredentialsInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1

    .prologue
    .line 4849
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->getProviderCredentialsInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasCaptchaInfo()Z
    .locals 1

    .prologue
    .line 4809
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasCaptchaInfo()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 4772
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasProviderCredentialsInfo()Z
    .locals 1

    .prologue
    .line 4846
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasProviderCredentialsInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4701
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;
    .locals 1

    .prologue
    .line 4715
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4741
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .prologue
    .line 4828
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasCaptchaInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4830
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15600(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 4835
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z

    .line 4836
    return-object p0

    .line 4833
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 4791
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4793
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 4798
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z

    .line 4799
    return-object p0

    .line 4796
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    goto :goto_0
.end method

.method public mergeProviderCredentialsInfo(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    .prologue
    .line 4865
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasProviderCredentialsInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->providerCredentialsInfo_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4867
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->providerCredentialsInfo_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->providerCredentialsInfo_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    .line 4872
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasProviderCredentialsInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z

    .line 4873
    return-object p0

    .line 4870
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->providerCredentialsInfo_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    goto :goto_0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    .prologue
    .line 4823
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z

    .line 4824
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 4825
    return-object p0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .prologue
    .line 4815
    if-nez p1, :cond_0

    .line 4816
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4818
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z

    .line 4819
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 4820
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .prologue
    .line 4786
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z

    .line 4787
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 4788
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 4778
    if-nez p1, :cond_0

    .line 4779
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4781
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z

    .line 4782
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 4783
    return-object p0
.end method

.method public setProviderCredentialsInfo(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    .prologue
    .line 4860
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasProviderCredentialsInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z

    .line 4861
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->providerCredentialsInfo_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    .line 4862
    return-object p0
.end method

.method public setProviderCredentialsInfo(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    .prologue
    .line 4852
    if-nez p1, :cond_0

    .line 4853
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4855
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->hasProviderCredentialsInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Z)Z

    .line 4856
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->providerCredentialsInfo_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;->access$15802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsRequest;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    .line 4857
    return-object p0
.end method
