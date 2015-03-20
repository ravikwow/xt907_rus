.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;-><init>()V

    .line 144
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    .line 145
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    .line 199
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    .line 200
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    .line 158
    return-object p0
.end method

.method public clearCurrentPassword()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasCurrentPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->access$702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Z)Z

    .line 239
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->getCurrentPassword()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->currentPassword_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->access$802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public clearNewPassword()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasNewPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->access$902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Z)Z

    .line 260
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->getNewPassword()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newPassword_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->access$1002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->access$502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Z)Z

    .line 218
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->access$602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;I)I

    .line 219
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

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
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getNewPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->getNewPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasCurrentPassword()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasCurrentPassword()Z

    move-result v0

    return v0
.end method

.method public hasNewPassword()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasNewPassword()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setCurrentPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 231
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasCurrentPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->access$702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Z)Z

    .line 234
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->currentPassword_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->access$802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public setNewPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasNewPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->access$902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Z)Z

    .line 255
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->newPassword_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->access$1002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->access$502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;Z)Z

    .line 213
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;->access$602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordRequest;I)I

    .line 214
    return-object p0
.end method
