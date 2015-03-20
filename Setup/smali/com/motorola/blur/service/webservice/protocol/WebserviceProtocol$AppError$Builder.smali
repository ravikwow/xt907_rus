.class public final Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "WebserviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->buildParsed()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;
    .locals 1

    .prologue
    .line 462
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->create()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    invoke-static {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->buildPartial()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;
    .locals 3

    .prologue
    .line 470
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;-><init>()V

    .line 471
    .local v0, "builder":Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;
    new-instance v1, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;-><init>(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    .line 472
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->build()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->build()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    invoke-static {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->buildPartial()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->buildPartial()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->buildPartial()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;
    .locals 3

    .prologue
    .line 521
    iget-object v1, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    if-nez v1, :cond_0

    .line 522
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    .line 526
    .local v0, "returnMe":Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    .line 527
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->clear()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->clear()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->clear()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;-><init>(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    .line 485
    return-object p0
.end method

.method public clearErrorCode()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 544
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    # setter for: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;->hasErrorCode:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;->access$1402(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;Z)Z

    .line 545
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    # setter for: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;->errorCode_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;->access$1502(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;I)I

    .line 546
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->clone()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->clone()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->clone()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->clone()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->clone()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;
    .locals 2

    .prologue
    .line 489
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->create()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;

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
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->clone()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;
    .locals 1

    .prologue
    .line 498
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;->getDefaultInstance()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 494
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    invoke-virtual {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    invoke-virtual {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;->hasErrorCode()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->internalGetResult()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setErrorCode(I)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 539
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;->hasErrorCode:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;->access$1402(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;Z)Z

    .line 540
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;

    # setter for: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;->errorCode_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;->access$1502(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;I)I

    .line 541
    return-object p0
.end method
