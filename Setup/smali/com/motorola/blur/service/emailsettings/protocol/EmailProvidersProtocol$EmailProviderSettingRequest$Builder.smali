.class public final Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "EmailProvidersProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildParsed()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->create()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildPartial()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;-><init>()V

    .line 144
    .local v0, "builder":Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;-><init>(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    .line 145
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->build()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->build()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildPartial()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildPartial()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->buildPartial()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    .line 199
    .local v0, "returnMe":Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    .line 200
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->clear()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->clear()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->clear()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;-><init>(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    .line 158
    return-object p0
.end method

.method public clearBlurVersion()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasBlurVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->access$502(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Z)Z

    .line 221
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->getDefaultInstance()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->getBlurVersion()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->blurVersion_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->access$602(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method public clearCapabilities()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasCapabilities:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->access$902(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Z)Z

    .line 260
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->capabilities_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->access$1002(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;I)I

    .line 261
    return-object p0
.end method

.method public clearEmail()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->access$702(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Z)Z

    .line 242
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->getDefaultInstance()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->getEmail()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->email_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->access$802(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->clone()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->clone()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->clone()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->clone()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->clone()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->create()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

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
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->clone()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBlurVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->getBlurVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->getCapabilities()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->getDefaultInstance()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBlurVersion()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasBlurVersion()Z

    move-result v0

    return v0
.end method

.method public hasCapabilities()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasCapabilities()Z

    move-result v0

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasEmail()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setBlurVersion(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasBlurVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->access$502(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Z)Z

    .line 216
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->blurVersion_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->access$602(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method public setCapabilities(I)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasCapabilities:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->access$902(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Z)Z

    .line 255
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->capabilities_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->access$1002(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;I)I

    .line 256
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->hasEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->access$702(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Z)Z

    .line 237
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->email_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;->access$802(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    return-object p0
.end method
