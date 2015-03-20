.class public final Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "LegalProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->create()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildPartial()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .locals 3

    .prologue
    .line 209
    new-instance v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;-><init>()V

    .line 210
    .local v0, "builder":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;-><init>(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    .line 211
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->build()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->build()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildPartial()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildPartial()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->buildPartial()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    if-nez v1, :cond_0

    .line 261
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    .line 265
    .local v0, "returnMe":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    .line 266
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->clear()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->clear()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->clear()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;-><init>(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    .line 224
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$702(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Z)Z

    .line 324
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$802(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 325
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$502(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Z)Z

    .line 287
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    sget-object v1, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;->EULA:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->type_:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$602(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .line 288
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->clone()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->clone()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->clone()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->clone()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->clone()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->create()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

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
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->clone()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->getDefaultInstance()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->getType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->hasType()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    # getter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$800(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    # getter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$800(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$802(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$702(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Z)Z

    .line 320
    return-object p0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$802(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    goto :goto_0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$702(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Z)Z

    .line 308
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$802(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 309
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$702(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Z)Z

    .line 303
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$802(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 304
    return-object p0
.end method

.method public setType(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$502(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Z)Z

    .line 282
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->type_:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;->access$602(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest;Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextRequest$Type;

    .line 283
    return-object p0
.end method
