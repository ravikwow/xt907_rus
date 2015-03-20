.class public final Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CommonProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->create()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildPartial()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 3

    .prologue
    .line 295
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;-><init>()V

    .line 296
    .local v0, "builder":Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;-><init>(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    .line 297
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->build()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->build()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildPartial()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildPartial()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->buildPartial()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 3

    .prologue
    .line 346
    iget-object v1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    if-nez v1, :cond_0

    .line 347
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    .line 351
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    .line 352
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->clear()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->clear()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->clear()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;-><init>(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    .line 310
    return-object p0
.end method

.method public clearData()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$1102(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Z)Z

    .line 430
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->getDefaultInstance()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->getData()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->data_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$1202(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    return-object p0
.end method

.method public clearEnd()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasEnd:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$902(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Z)Z

    .line 409
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->end_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$1002(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;I)I

    .line 410
    return-object p0
.end method

.method public clearStart()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasStart:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$702(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Z)Z

    .line 391
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->start_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$802(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;I)I

    .line 392
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$502(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Z)Z

    .line 373
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->CONTACT:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->type_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$602(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    .line 374
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->clone()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->clone()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->clone()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->clone()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->clone()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 2

    .prologue
    .line 314
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->create()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

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
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->clone()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->getDefaultInstance()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 319
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->getEnd()I

    move-result v0

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->getStart()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->getType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasEnd()Z
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasEnd()Z

    move-result v0

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasStart()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasType()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/lang/String;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$1102(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Z)Z

    .line 425
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->data_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$1202(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Ljava/lang/String;)Ljava/lang/String;

    .line 426
    return-object p0
.end method

.method public setEnd(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasEnd:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$902(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Z)Z

    .line 404
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->end_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$1002(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;I)I

    .line 405
    return-object p0
.end method

.method public setStart(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasStart:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$702(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Z)Z

    .line 386
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->start_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$802(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;I)I

    .line 387
    return-object p0
.end method

.method public setType(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$502(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Z)Z

    .line 368
    iget-object v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->result:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    # setter for: Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->type_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->access$602(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    .line 369
    return-object p0
.end method
