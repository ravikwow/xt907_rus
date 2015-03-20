.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    .locals 3

    .prologue
    .line 213
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;-><init>()V

    .line 214
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 215
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 3

    .prologue
    .line 264
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    if-nez v1, :cond_0

    .line 265
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 269
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 270
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 228
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->access$502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;Z)Z

    .line 291
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->BAD_REQUEST:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->type_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->access$602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 292
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    .locals 2

    .prologue
    .line 232
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

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
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->getType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    move-result-object v0

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->hasType()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setType(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->access$502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;Z)Z

    .line 286
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->type_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->access$602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 287
    return-object p0
.end method
