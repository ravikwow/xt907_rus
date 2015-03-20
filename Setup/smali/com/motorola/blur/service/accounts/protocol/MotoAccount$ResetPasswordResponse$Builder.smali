.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8668
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$30600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8663
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$30700()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 8663
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8714
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8715
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 8718
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .locals 3

    .prologue
    .line 8671
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;-><init>()V

    .line 8672
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    .line 8673
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1

    .prologue
    .line 8706
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8707
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8709
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 3

    .prologue
    .line 8722
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    if-nez v1, :cond_0

    .line 8723
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8726
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    .line 8727
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    .line 8728
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 8681
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    if-nez v0, :cond_0

    .line 8682
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8685
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    .line 8686
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 8748
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$30902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Z)Z

    .line 8749
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$31002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 8750
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 8785
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$31102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Z)Z

    .line 8786
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$31202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8787
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 8690
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

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
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1

    .prologue
    .line 8699
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8695
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 8737
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 8758
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 8734
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 8755
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 8663
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;
    .locals 1

    .prologue
    .line 8677
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 8703
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 8774
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$31200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8776
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$31200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$31202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8781
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$31102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Z)Z

    .line 8782
    return-object p0

    .line 8779
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$31202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 8740
    if-nez p1, :cond_0

    .line 8741
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8743
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$30902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Z)Z

    .line 8744
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$31002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 8745
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 8769
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$31102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Z)Z

    .line 8770
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$31202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8771
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 8761
    if-nez p1, :cond_0

    .line 8762
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8764
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$31102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Z)Z

    .line 8765
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;->access$31202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8766
    return-object p0
.end method
