.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4477
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$14300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4472
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14400()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    .locals 1

    .prologue
    .line 4472
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4523
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4524
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4527
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    .locals 3

    .prologue
    .line 4480
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;-><init>()V

    .line 4481
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    .line 4482
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1

    .prologue
    .line 4515
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4516
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4518
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 3

    .prologue
    .line 4531
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    if-nez v1, :cond_0

    .line 4532
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4535
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    .line 4536
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    .line 4537
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    .locals 2

    .prologue
    .line 4490
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    if-nez v0, :cond_0

    .line 4491
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4494
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    .line 4495
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    .locals 2

    .prologue
    .line 4557
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->access$14602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;Z)Z

    .line 4558
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;->CREDENTIAL_VERIFICATION_FAILURE:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->access$14702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;

    .line 4559
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    .locals 2

    .prologue
    .line 4499
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

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
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1

    .prologue
    .line 4508
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4504
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;
    .locals 1

    .prologue
    .line 4546
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 4543
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4472
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;
    .locals 1

    .prologue
    .line 4486
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4512
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;

    .prologue
    .line 4549
    if-nez p1, :cond_0

    .line 4550
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4552
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->access$14602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;Z)Z

    .line 4553
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;->access$14702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationResponse$Error;

    .line 4554
    return-object p0
.end method
