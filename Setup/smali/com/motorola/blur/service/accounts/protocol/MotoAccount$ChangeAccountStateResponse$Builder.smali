.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4664
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$16100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4659
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16200()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .locals 1

    .prologue
    .line 4659
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4710
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4711
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4714
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .locals 3

    .prologue
    .line 4667
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;-><init>()V

    .line 4668
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    .line 4669
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1

    .prologue
    .line 4702
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4703
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4705
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 3

    .prologue
    .line 4718
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    if-nez v1, :cond_0

    .line 4719
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4722
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    .line 4723
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    .line 4724
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .locals 2

    .prologue
    .line 4677
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    if-nez v0, :cond_0

    .line 4678
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4681
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    .line 4682
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .locals 2

    .prologue
    .line 4744
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Z)Z

    .line 4745
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 4746
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .locals 2

    .prologue
    .line 4781
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Z)Z

    .line 4782
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4783
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .locals 2

    .prologue
    .line 4686
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

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
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1

    .prologue
    .line 4695
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4691
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 4733
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 4754
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 4730
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 4751
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4659
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;
    .locals 1

    .prologue
    .line 4673
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4699
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 4770
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4772
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4777
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Z)Z

    .line 4778
    return-object p0

    .line 4775
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 4736
    if-nez p1, :cond_0

    .line 4737
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4739
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Z)Z

    .line 4740
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 4741
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 4765
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Z)Z

    .line 4766
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4767
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 4757
    if-nez p1, :cond_0

    .line 4758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4760
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Z)Z

    .line 4761
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;->access$16702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4762
    return-object p0
.end method
