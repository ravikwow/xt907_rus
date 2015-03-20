.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10455
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$37000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10450
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$37100()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .locals 1

    .prologue
    .line 10450
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10501
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10502
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 10505
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .locals 3

    .prologue
    .line 10458
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;-><init>()V

    .line 10459
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    .line 10460
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1

    .prologue
    .line 10493
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10494
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 10496
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 3

    .prologue
    .line 10509
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    if-nez v1, :cond_0

    .line 10510
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10513
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    .line 10514
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    .line 10515
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .locals 2

    .prologue
    .line 10468
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    if-nez v0, :cond_0

    .line 10469
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10472
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    .line 10473
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .locals 2

    .prologue
    .line 10535
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Z)Z

    .line 10536
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 10537
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .locals 2

    .prologue
    .line 10572
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Z)Z

    .line 10573
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10574
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .locals 2

    .prologue
    .line 10477
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

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
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1

    .prologue
    .line 10486
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10482
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 10524
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 10545
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 10521
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 10542
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 10450
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;
    .locals 1

    .prologue
    .line 10464
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 10490
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 10561
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10563
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10568
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Z)Z

    .line 10569
    return-object p0

    .line 10566
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 10527
    if-nez p1, :cond_0

    .line 10528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10530
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Z)Z

    .line 10531
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 10532
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 10556
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Z)Z

    .line 10557
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10558
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 10548
    if-nez p1, :cond_0

    .line 10549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10551
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Z)Z

    .line 10552
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;->access$37602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10553
    return-object p0
.end method
