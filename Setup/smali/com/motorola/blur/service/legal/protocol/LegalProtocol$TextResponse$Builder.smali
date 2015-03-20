.class public final Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "LegalProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    .locals 1

    .prologue
    .line 527
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->create()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildPartial()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    .locals 3

    .prologue
    .line 535
    new-instance v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;-><init>()V

    .line 536
    .local v0, "builder":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;-><init>(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    .line 537
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->build()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->build()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 573
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildPartial()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildPartial()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->buildPartial()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 3

    .prologue
    .line 586
    iget-object v1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    if-nez v1, :cond_0

    .line 587
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    .line 591
    .local v0, "returnMe":Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    .line 592
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->clear()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->clear()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->clear()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;-><init>(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    .line 550
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->access$1402(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;Z)Z

    .line 613
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    sget-object v1, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;->INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->error_:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->access$1502(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    .line 614
    return-object p0
.end method

.method public clearText()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->hasText:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->access$1602(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;Z)Z

    .line 634
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->getDefaultInstance()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->getText()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->text_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->access$1702(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 635
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->clone()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->clone()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->clone()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->clone()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->clone()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    .locals 2

    .prologue
    .line 554
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->create()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

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
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->clone()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1

    .prologue
    .line 563
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->getDefaultInstance()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 559
    invoke-static {}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->getError()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->hasText()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setError(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    .prologue
    .line 604
    if-nez p1, :cond_0

    .line 605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->access$1402(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;Z)Z

    .line 608
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->error_:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->access$1502(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Error;

    .line 609
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 625
    if-nez p1, :cond_0

    .line 626
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->hasText:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->access$1602(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;Z)Z

    .line 629
    iget-object v0, p0, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse$Builder;->result:Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;

    # setter for: Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->text_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;->access$1702(Lcom/motorola/blur/service/legal/protocol/LegalProtocol$TextResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    return-object p0
.end method
