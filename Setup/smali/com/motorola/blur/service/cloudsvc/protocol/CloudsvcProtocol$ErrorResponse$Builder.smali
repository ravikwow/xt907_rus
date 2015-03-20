.class public final Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CloudsvcProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildParsed()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->create()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildPartial()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .locals 3

    .prologue
    .line 275
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;-><init>()V

    .line 276
    .local v0, "builder":Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;-><init>(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    .line 277
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->build()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->build()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildPartial()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildPartial()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->buildPartial()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 3

    .prologue
    .line 326
    iget-object v1, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    if-nez v1, :cond_0

    .line 327
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    .line 331
    .local v0, "returnMe":Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    .line 332
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->clear()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->clear()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->clear()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;-><init>(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    .line 290
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->access$502(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Z)Z

    .line 353
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    sget-object v1, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OK:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    # setter for: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->error_:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->access$602(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 354
    return-object p0
.end method

.method public clearErrorText()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasErrorText:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->access$702(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Z)Z

    .line 374
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->getDefaultInstance()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->getErrorText()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->errorText_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->access$802(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    return-object p0
.end method

.method public clearErrorUrl()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasErrorUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->access$902(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Z)Z

    .line 395
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->getDefaultInstance()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->getErrorUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->errorUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->access$1002(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->clone()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->clone()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->clone()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->clone()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->clone()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .locals 2

    .prologue
    .line 294
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->create()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

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
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->clone()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1

    .prologue
    .line 303
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->getDefaultInstance()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->getError()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->getErrorText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->getErrorUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasErrorText()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasErrorText()Z

    move-result v0

    return v0
.end method

.method public hasErrorUrl()Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasErrorUrl()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setError(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->access$502(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Z)Z

    .line 348
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    # setter for: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->error_:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->access$602(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 349
    return-object p0
.end method

.method public setErrorText(Ljava/lang/String;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 365
    if-nez p1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasErrorText:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->access$702(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Z)Z

    .line 369
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    # setter for: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->errorText_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->access$802(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    return-object p0
.end method

.method public setErrorUrl(Ljava/lang/String;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 386
    if-nez p1, :cond_0

    .line 387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->hasErrorUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->access$902(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Z)Z

    .line 390
    iget-object v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse$Builder;->result:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;

    # setter for: Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->errorUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;->access$1002(Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    return-object p0
.end method
