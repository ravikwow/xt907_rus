.class public final Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "WebserviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->create()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    invoke-static {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildPartial()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;-><init>()V

    .line 241
    .local v0, "builder":Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    new-instance v1, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;-><init>(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    .line 242
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->build()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->build()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    invoke-static {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildPartial()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildPartial()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->buildPartial()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    if-nez v1, :cond_0

    .line 292
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    .line 296
    .local v0, "returnMe":Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    .line 297
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->clear()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->clear()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->clear()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;-><init>(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    .line 255
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->access$702(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;Z)Z

    .line 336
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    sget-object v1, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->INVALID_URI:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    # setter for: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->type_:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->access$802(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 337
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    # setter for: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->access$502(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;Z)Z

    .line 315
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    # setter for: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->access$602(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;I)I

    .line 316
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->clone()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->clone()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->clone()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->clone()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->clone()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    .locals 2

    .prologue
    .line 259
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->create()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

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
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->clone()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1

    .prologue
    .line 268
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->getDefaultInstance()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 264
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    invoke-virtual {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->getType()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    invoke-virtual {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    invoke-virtual {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    invoke-virtual {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->internalGetResult()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setType(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .prologue
    .line 327
    if-nez p1, :cond_0

    .line 328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->access$702(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;Z)Z

    .line 331
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    # setter for: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->type_:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->access$802(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 332
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->access$502(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;Z)Z

    .line 310
    iget-object v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Builder;->result:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;

    # setter for: Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->access$602(Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;I)I

    .line 311
    return-object p0
.end method
