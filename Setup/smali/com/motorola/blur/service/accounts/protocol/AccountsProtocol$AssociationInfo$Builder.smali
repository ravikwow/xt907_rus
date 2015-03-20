.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5714
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$18200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5709
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18300()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 1

    .prologue
    .line 5709
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5760
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5761
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5764
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 3

    .prologue
    .line 5717
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;-><init>()V

    .line 5718
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    .line 5719
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1

    .prologue
    .line 5752
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5753
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5755
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 3

    .prologue
    .line 5768
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    if-nez v1, :cond_0

    .line 5769
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5772
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    .line 5773
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    .line 5774
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2

    .prologue
    .line 5727
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    if-nez v0, :cond_0

    .line 5728
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5731
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    .line 5732
    return-object p0
.end method

.method public clearBlurVersion()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2

    .prologue
    .line 5944
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasBlurVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5945
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->getBlurVersion()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->blurVersion_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 5946
    return-object p0
.end method

.method public clearCloudInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2

    .prologue
    .line 5886
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasCloudInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5887
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->cloudInfo_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 5888
    return-object p0
.end method

.method public clearCreationTime()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 3

    .prologue
    .line 5849
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasCreationTime:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5850
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->creationTime_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;J)J

    .line 5851
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2

    .prologue
    .line 5831
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5832
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 5833
    return-object p0
.end method

.method public clearLogin()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2

    .prologue
    .line 5794
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5795
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->getLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->login_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 5796
    return-object p0
.end method

.method public clearSignature()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2

    .prologue
    .line 5923
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5924
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->signature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 5925
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2

    .prologue
    .line 5736
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

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
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBlurVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5933
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->getBlurVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCloudInfo()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1

    .prologue
    .line 5859
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->getCloudInfo()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 5841
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1

    .prologue
    .line 5745
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5741
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1

    .prologue
    .line 5804
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5783
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->getLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1

    .prologue
    .line 5896
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->getSignature()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public hasBlurVersion()Z
    .locals 1

    .prologue
    .line 5930
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasBlurVersion()Z

    move-result v0

    return v0
.end method

.method public hasCloudInfo()Z
    .locals 1

    .prologue
    .line 5856
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasCloudInfo()Z

    move-result v0

    return v0
.end method

.method public hasCreationTime()Z
    .locals 1

    .prologue
    .line 5838
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasCreationTime()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 5801
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 5780
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasSignature()Z
    .locals 1

    .prologue
    .line 5893
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasSignature()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5709
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1

    .prologue
    .line 5723
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5749
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeCloudInfo(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .prologue
    .line 5875
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasCloudInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->cloudInfo_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5877
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->cloudInfo_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->cloudInfo_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 5882
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasCloudInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5883
    return-object p0

    .line 5880
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->cloudInfo_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .prologue
    .line 5820
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5822
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 5827
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5828
    return-object p0

    .line 5825
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    goto :goto_0
.end method

.method public mergeSignature(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .prologue
    .line 5912
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->signature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5914
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->signature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->signature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 5919
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5920
    return-object p0

    .line 5917
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->signature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    goto :goto_0
.end method

.method public setBlurVersion(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5936
    if-nez p1, :cond_0

    .line 5937
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5939
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasBlurVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5940
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->blurVersion_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 5941
    return-object p0
.end method

.method public setCloudInfo(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    .prologue
    .line 5870
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasCloudInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5871
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->cloudInfo_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 5872
    return-object p0
.end method

.method public setCloudInfo(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .prologue
    .line 5862
    if-nez p1, :cond_0

    .line 5863
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5865
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasCloudInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5866
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->cloudInfo_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 5867
    return-object p0
.end method

.method public setCreationTime(J)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 5844
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasCreationTime:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5845
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->creationTime_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;J)J

    .line 5846
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    .prologue
    .line 5815
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5816
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 5817
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .prologue
    .line 5807
    if-nez p1, :cond_0

    .line 5808
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5810
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5811
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 5812
    return-object p0
.end method

.method public setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5786
    if-nez p1, :cond_0

    .line 5787
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5789
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5790
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->login_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$18602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 5791
    return-object p0
.end method

.method public setSignature(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    .prologue
    .line 5907
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5908
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->signature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 5909
    return-object p0
.end method

.method public setSignature(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .prologue
    .line 5899
    if-nez p1, :cond_0

    .line 5900
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5902
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->hasSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Z)Z

    .line 5903
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->signature_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;->access$19402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 5904
    return-object p0
.end method
