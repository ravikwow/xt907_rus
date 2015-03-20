.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3149
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$10400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3144
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10500()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 3144
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3195
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3196
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3199
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    .locals 3

    .prologue
    .line 3152
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;-><init>()V

    .line 3153
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    .line 3154
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1

    .prologue
    .line 3187
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3188
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3190
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 3

    .prologue
    .line 3203
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    if-nez v1, :cond_0

    .line 3204
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3207
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    .line 3208
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    .line 3209
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 3162
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    if-nez v0, :cond_0

    .line 3163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3166
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    .line 3167
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 3229
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->access$10702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;Z)Z

    .line 3230
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->access$10802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    .line 3231
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 3171
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

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
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1

    .prologue
    .line 3180
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3176
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;
    .locals 1

    .prologue
    .line 3218
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 3215
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3144
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
    .locals 1

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    .prologue
    .line 3221
    if-nez p1, :cond_0

    .line 3222
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3224
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->access$10702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;Z)Z

    .line 3225
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->access$10802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    .line 3226
    return-object p0
.end method
