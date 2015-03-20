.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9245
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$32600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9240
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$32700()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .locals 1

    .prologue
    .line 9240
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9291
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9292
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 9295
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .locals 3

    .prologue
    .line 9248
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;-><init>()V

    .line 9249
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    .line 9250
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1

    .prologue
    .line 9283
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9284
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 9286
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 3

    .prologue
    .line 9299
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    if-nez v1, :cond_0

    .line 9300
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9303
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    .line 9304
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    .line 9305
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .locals 2

    .prologue
    .line 9258
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    if-nez v0, :cond_0

    .line 9259
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9262
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    .line 9263
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .locals 2

    .prologue
    .line 9325
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$32902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Z)Z

    .line 9326
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$33002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 9327
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .locals 2

    .prologue
    .line 9362
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$33102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Z)Z

    .line 9363
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$33202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9364
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .locals 2

    .prologue
    .line 9267
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

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
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1

    .prologue
    .line 9276
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9272
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 9314
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 9335
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 9311
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 9332
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 9240
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;
    .locals 1

    .prologue
    .line 9254
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 9280
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 9351
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$33200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9353
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$33200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$33202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9358
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$33102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Z)Z

    .line 9359
    return-object p0

    .line 9356
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$33202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 9317
    if-nez p1, :cond_0

    .line 9318
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9320
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$32902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Z)Z

    .line 9321
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$33002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 9322
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 9346
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$33102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Z)Z

    .line 9347
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$33202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9348
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 9338
    if-nez p1, :cond_0

    .line 9339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9341
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$33102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Z)Z

    .line 9342
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;->access$33202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9343
    return-object p0
.end method
