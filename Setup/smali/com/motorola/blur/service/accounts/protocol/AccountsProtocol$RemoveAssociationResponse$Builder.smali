.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7672
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$25400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7667
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25500()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7718
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7719
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 7722
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    .locals 3

    .prologue
    .line 7675
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;-><init>()V

    .line 7676
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    .line 7677
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1

    .prologue
    .line 7710
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7711
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7713
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 3

    .prologue
    .line 7726
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    if-nez v1, :cond_0

    .line 7727
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7730
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    .line 7731
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    .line 7732
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    .locals 2

    .prologue
    .line 7685
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    if-nez v0, :cond_0

    .line 7686
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7689
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    .line 7690
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    .locals 2

    .prologue
    .line 7752
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->access$25702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;Z)Z

    .line 7753
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->access$25802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;

    .line 7754
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    .locals 2

    .prologue
    .line 7694
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

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
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1

    .prologue
    .line 7703
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7699
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;
    .locals 1

    .prologue
    .line 7741
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 7738
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 7667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;
    .locals 1

    .prologue
    .line 7681
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7707
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;

    .prologue
    .line 7744
    if-nez p1, :cond_0

    .line 7745
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7747
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->access$25702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;Z)Z

    .line 7748
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;->access$25802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationResponse$Error;

    .line 7749
    return-object p0
.end method
