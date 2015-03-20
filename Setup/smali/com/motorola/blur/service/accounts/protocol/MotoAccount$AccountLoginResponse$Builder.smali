.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5420
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$18800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5415
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18900()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 1

    .prologue
    .line 5415
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5466
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5467
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5470
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 3

    .prologue
    .line 5423
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;-><init>()V

    .line 5424
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    .line 5425
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1

    .prologue
    .line 5458
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5459
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5461
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 3

    .prologue
    .line 5474
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    if-nez v1, :cond_0

    .line 5475
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5478
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    .line 5479
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    .line 5480
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 2

    .prologue
    .line 5433
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    if-nez v0, :cond_0

    .line 5434
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5437
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    .line 5438
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 2

    .prologue
    .line 5500
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Z)Z

    .line 5501
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 5502
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 2

    .prologue
    .line 5574
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Z)Z

    .line 5575
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 5576
    return-object p0
.end method

.method public clearSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 2

    .prologue
    .line 5537
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Z)Z

    .line 5538
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 5539
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 2

    .prologue
    .line 5442
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

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
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1

    .prologue
    .line 5451
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5447
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 5489
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 5547
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 5510
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 5486
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 5544
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasSession()Z
    .locals 1

    .prologue
    .line 5507
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasSession()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;
    .locals 1

    .prologue
    .line 5429
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5455
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 5563
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5565
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 5570
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Z)Z

    .line 5571
    return-object p0

    .line 5568
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 5526
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5528
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 5533
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Z)Z

    .line 5534
    return-object p0

    .line 5531
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 5492
    if-nez p1, :cond_0

    .line 5493
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5495
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Z)Z

    .line 5496
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 5497
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 5558
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Z)Z

    .line 5559
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 5560
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 5550
    if-nez p1, :cond_0

    .line 5551
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5553
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Z)Z

    .line 5554
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 5555
    return-object p0
.end method

.method public setSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    .prologue
    .line 5521
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Z)Z

    .line 5522
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 5523
    return-object p0
.end method

.method public setSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 5513
    if-nez p1, :cond_0

    .line 5514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5516
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Z)Z

    .line 5517
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;->access$19402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 5518
    return-object p0
.end method
