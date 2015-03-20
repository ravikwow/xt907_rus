.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8194
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$27000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8189
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27100()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    .locals 1

    .prologue
    .line 8189
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8241
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 8244
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    .locals 3

    .prologue
    .line 8197
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;-><init>()V

    .line 8198
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    .line 8199
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1

    .prologue
    .line 8232
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8233
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8235
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 3

    .prologue
    .line 8248
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    if-nez v1, :cond_0

    .line 8249
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8252
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    .line 8253
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    .line 8254
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    .locals 2

    .prologue
    .line 8207
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    if-nez v0, :cond_0

    .line 8208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8211
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    .line 8212
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    .locals 2

    .prologue
    .line 8274
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->access$27302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;Z)Z

    .line 8275
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->access$27402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;

    .line 8276
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    .locals 2

    .prologue
    .line 8216
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

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
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1

    .prologue
    .line 8225
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8221
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;
    .locals 1

    .prologue
    .line 8263
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 8260
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 8189
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;
    .locals 1

    .prologue
    .line 8203
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 8229
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;

    .prologue
    .line 8266
    if-nez p1, :cond_0

    .line 8267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8269
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->access$27302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;Z)Z

    .line 8270
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;->access$27402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceResponse$Error;

    .line 8271
    return-object p0
.end method
