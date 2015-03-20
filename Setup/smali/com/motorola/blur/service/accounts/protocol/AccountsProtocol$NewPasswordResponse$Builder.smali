.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 465
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    .locals 3

    .prologue
    .line 473
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;-><init>()V

    .line 474
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    .line 475
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 3

    .prologue
    .line 524
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    if-nez v1, :cond_0

    .line 525
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    .line 529
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    .line 530
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    .line 488
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->access$1802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;Z)Z

    .line 569
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;->CURRENT_PASSWORD_MISMATCH:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->access$1902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;

    .line 570
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 547
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->access$1602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;Z)Z

    .line 548
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->access$1702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;I)I

    .line 549
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 492
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

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
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1

    .prologue
    .line 501
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 497
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;

    .prologue
    .line 560
    if-nez p1, :cond_0

    .line 561
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->access$1802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;Z)Z

    .line 564
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->access$1902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Error;

    .line 565
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 542
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->access$1602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;Z)Z

    .line 543
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;->access$1702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewPasswordResponse;I)I

    .line 544
    return-object p0
.end method
