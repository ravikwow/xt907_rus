.class public final Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CaptchaProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;-><init>()V

    .line 131
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    .line 132
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    if-nez v1, :cond_0

    .line 182
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    .line 186
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    .line 187
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    .line 145
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->access$502(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;Z)Z

    .line 224
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->access$602(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 225
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

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
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->access$600(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->access$600(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->access$602(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->access$502(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;Z)Z

    .line 220
    return-object p0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->access$602(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    goto :goto_0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->access$502(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;Z)Z

    .line 208
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->access$602(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 209
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->access$502(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;Z)Z

    .line 203
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;->access$602(Lcom/motorola/blur/service/accounts/protocol/CaptchaProtocol$GetCaptchaRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 204
    return-object p0
.end method
