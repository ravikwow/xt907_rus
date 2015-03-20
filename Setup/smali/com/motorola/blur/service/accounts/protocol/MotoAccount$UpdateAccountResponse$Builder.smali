.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3298
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3293
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11200()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .locals 1

    .prologue
    .line 3293
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3345
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3348
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .locals 3

    .prologue
    .line 3301
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;-><init>()V

    .line 3302
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    .line 3303
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3337
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3339
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 3

    .prologue
    .line 3352
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    if-nez v1, :cond_0

    .line 3353
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3356
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    .line 3357
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    .line 3358
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .locals 2

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    if-nez v0, :cond_0

    .line 3312
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3315
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    .line 3316
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .locals 2

    .prologue
    .line 3378
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Z)Z

    .line 3379
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 3380
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .locals 2

    .prologue
    .line 3415
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Z)Z

    .line 3416
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3417
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .locals 2

    .prologue
    .line 3320
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

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
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1

    .prologue
    .line 3329
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3325
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 3367
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 3388
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 3364
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;
    .locals 1

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 3404
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3406
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3411
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Z)Z

    .line 3412
    return-object p0

    .line 3409
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 3370
    if-nez p1, :cond_0

    .line 3371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3373
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Z)Z

    .line 3374
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 3375
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 3399
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Z)Z

    .line 3400
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3401
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 3391
    if-nez p1, :cond_0

    .line 3392
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3394
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Z)Z

    .line 3395
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;->access$11702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3396
    return-object p0
.end method
