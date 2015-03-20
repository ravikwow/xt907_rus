.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3643
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11800(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3638
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11900()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    .locals 1

    .prologue
    .line 3638
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3689
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3690
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3693
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    .locals 3

    .prologue
    .line 3646
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;-><init>()V

    .line 3647
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    .line 3648
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1

    .prologue
    .line 3681
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3682
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3684
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 3

    .prologue
    .line 3697
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    if-nez v1, :cond_0

    .line 3698
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3701
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    .line 3702
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    .line 3703
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    .locals 2

    .prologue
    .line 3656
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    if-nez v0, :cond_0

    .line 3657
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3660
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    .line 3661
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    .locals 2

    .prologue
    .line 3723
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->access$12102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;Z)Z

    .line 3724
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->access$12202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;

    .line 3725
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    .locals 2

    .prologue
    .line 3665
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

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
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1

    .prologue
    .line 3674
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3670
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;
    .locals 1

    .prologue
    .line 3712
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 3709
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;
    .locals 1

    .prologue
    .line 3652
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;

    .prologue
    .line 3715
    if-nez p1, :cond_0

    .line 3716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3718
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->access$12102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;Z)Z

    .line 3719
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;->access$12202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$VerifyEmailFromLocalAddedEmailResponse$Error;

    .line 3720
    return-object p0
.end method
