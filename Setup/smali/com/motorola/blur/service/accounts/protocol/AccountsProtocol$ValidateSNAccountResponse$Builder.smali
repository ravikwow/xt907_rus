.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8746
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$28800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8741
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$28900()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;
    .locals 1

    .prologue
    .line 8741
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8793
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 8796
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;
    .locals 3

    .prologue
    .line 8749
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;-><init>()V

    .line 8750
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    .line 8751
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;
    .locals 1

    .prologue
    .line 8784
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8785
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8787
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;
    .locals 3

    .prologue
    .line 8800
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    if-nez v1, :cond_0

    .line 8801
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8804
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    .line 8805
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    .line 8806
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;
    .locals 2

    .prologue
    .line 8759
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    if-nez v0, :cond_0

    .line 8760
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8763
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    .line 8764
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;
    .locals 2

    .prologue
    .line 8826
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;->access$29102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;Z)Z

    .line 8827
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Error;->CREDENTIAL_VERIFICATION_FAILURE:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;->access$29202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Error;

    .line 8828
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;
    .locals 2

    .prologue
    .line 8768
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;

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
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;
    .locals 1

    .prologue
    .line 8777
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8773
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Error;
    .locals 1

    .prologue
    .line 8815
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 8812
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 8741
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;
    .locals 1

    .prologue
    .line 8755
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 8781
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Error;

    .prologue
    .line 8818
    if-nez p1, :cond_0

    .line 8819
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8821
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;->access$29102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;Z)Z

    .line 8822
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;->access$29202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountResponse$Error;

    .line 8823
    return-object p0
.end method
