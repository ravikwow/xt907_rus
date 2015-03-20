.class public final Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AdminFeedProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    .locals 3

    .prologue
    .line 275
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;-><init>()V

    .line 276
    .local v0, "builder":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;-><init>(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    .line 277
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 3

    .prologue
    .line 326
    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    if-nez v1, :cond_0

    .line 327
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    .line 331
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    .line 332
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;-><init>(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    .line 290
    return-object p0
.end method

.method public clearData()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->access$502(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;Z)Z

    .line 353
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->data_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->access$602(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 354
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    .locals 2

    .prologue
    .line 294
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

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
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1

    .prologue
    .line 303
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->hasData()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->access$502(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;Z)Z

    .line 348
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->data_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;->access$602(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdminFeedAppPacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 349
    return-object p0
.end method
