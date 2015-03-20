.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;-><init>()V

    .line 153
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;-><init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    .line 154
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    if-nez v1, :cond_0

    .line 204
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    .line 208
    .local v0, "returnMe":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    .line 209
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;-><init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    .line 167
    return-object p0
.end method

.method public clearCaptchaInfo()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z

    .line 304
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$1002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 305
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$702(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z

    .line 267
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$802(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 268
    return-object p0
.end method

.method public clearEmail()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z

    .line 230
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->getEmail()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->email_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$602(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public clearScreenName()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasScreenName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$1102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z

    .line 325
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->getScreenName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->screenName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$1202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

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
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->getScreenName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCaptchaInfo()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasCaptchaInfo()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasEmail()Z

    move-result v0

    return v0
.end method

.method public hasScreenName()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasScreenName()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasCaptchaInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$1000(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$1000(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$1002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z

    .line 300
    return-object p0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$1002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$800(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$800(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$802(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$702(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z

    .line 263
    return-object p0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$802(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    goto :goto_0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z

    .line 288
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$1002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 289
    return-object p0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z

    .line 283
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$1002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 284
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$702(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z

    .line 251
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$802(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 252
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 242
    if-nez p1, :cond_0

    .line 243
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$702(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z

    .line 246
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$802(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 247
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z

    .line 225
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->email_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$602(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public setScreenName(Ljava/lang/String;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->hasScreenName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$1102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Z)Z

    .line 320
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->screenName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;->access$1202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    return-object p0
.end method
