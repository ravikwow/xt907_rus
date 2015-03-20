.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7385
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$26100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7380
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26200()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .locals 1

    .prologue
    .line 7380
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7431
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7432
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 7435
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .locals 3

    .prologue
    .line 7388
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;-><init>()V

    .line 7389
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    .line 7390
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1

    .prologue
    .line 7423
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7424
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7426
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 3

    .prologue
    .line 7439
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    if-nez v1, :cond_0

    .line 7440
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7443
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    .line 7444
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    .line 7445
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .locals 2

    .prologue
    .line 7398
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    if-nez v0, :cond_0

    .line 7399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7402
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    .line 7403
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .locals 2

    .prologue
    .line 7465
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Z)Z

    .line 7466
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 7467
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .locals 2

    .prologue
    .line 7502
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Z)Z

    .line 7503
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7504
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .locals 2

    .prologue
    .line 7407
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

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
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1

    .prologue
    .line 7416
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7412
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 7454
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 7475
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 7451
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 7472
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 7380
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;
    .locals 1

    .prologue
    .line 7394
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7420
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 7491
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7493
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7498
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Z)Z

    .line 7499
    return-object p0

    .line 7496
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 7457
    if-nez p1, :cond_0

    .line 7458
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7460
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Z)Z

    .line 7461
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 7462
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 7486
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Z)Z

    .line 7487
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7488
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 7478
    if-nez p1, :cond_0

    .line 7479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7481
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Z)Z

    .line 7482
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;->access$26702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7483
    return-object p0
.end method
