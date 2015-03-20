.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 887
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2800(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .locals 1

    .prologue
    .line 882
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 937
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .locals 3

    .prologue
    .line 890
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;-><init>()V

    .line 891
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;-><init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    .line 892
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 928
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 3

    .prologue
    .line 941
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    if-nez v1, :cond_0

    .line 942
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    .line 946
    .local v0, "returnMe":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    .line 947
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .locals 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    if-nez v0, :cond_0

    .line 901
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;-><init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    .line 905
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Z)Z

    .line 1005
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 1006
    return-object p0
.end method

.method public clearEmail()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->hasEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Z)Z

    .line 968
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->getEmail()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->email_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 969
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .locals 2

    .prologue
    .line 909
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

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
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1

    .prologue
    .line 918
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 914
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->hasEmail()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 993
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3400(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3400(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 1000
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Z)Z

    .line 1001
    return-object p0

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    goto :goto_0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Z)Z

    .line 989
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 990
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 980
    if-nez p1, :cond_0

    .line 981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Z)Z

    .line 984
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 985
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 959
    if-nez p1, :cond_0

    .line 960
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->hasEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Z)Z

    .line 963
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->email_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;->access$3202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 964
    return-object p0
.end method
