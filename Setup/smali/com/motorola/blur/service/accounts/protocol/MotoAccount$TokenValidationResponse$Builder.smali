.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11158
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$39400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11153
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$39500()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .locals 1

    .prologue
    .line 11153
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11204
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11205
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 11208
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .locals 3

    .prologue
    .line 11161
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;-><init>()V

    .line 11162
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    .line 11163
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1

    .prologue
    .line 11196
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11197
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 11199
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 3

    .prologue
    .line 11212
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    if-nez v1, :cond_0

    .line 11213
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11216
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    .line 11217
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    .line 11218
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .locals 2

    .prologue
    .line 11171
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    if-nez v0, :cond_0

    .line 11172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11175
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    .line 11176
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .locals 2

    .prologue
    .line 11238
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$39702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Z)Z

    .line 11239
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$39802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 11240
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .locals 2

    .prologue
    .line 11275
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$39902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Z)Z

    .line 11276
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$40002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 11277
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .locals 2

    .prologue
    .line 11180
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

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
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1

    .prologue
    .line 11189
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11185
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 11227
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 11248
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 11224
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 11245
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 11153
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;
    .locals 1

    .prologue
    .line 11167
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 11193
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 11264
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$40000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11266
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$40000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$40002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 11271
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$39902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Z)Z

    .line 11272
    return-object p0

    .line 11269
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$40002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 11230
    if-nez p1, :cond_0

    .line 11231
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11233
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$39702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Z)Z

    .line 11234
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$39802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 11235
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 11259
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$39902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Z)Z

    .line 11260
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$40002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 11261
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 11251
    if-nez p1, :cond_0

    .line 11252
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11254
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$39902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Z)Z

    .line 11255
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;->access$40002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 11256
    return-object p0
.end method
