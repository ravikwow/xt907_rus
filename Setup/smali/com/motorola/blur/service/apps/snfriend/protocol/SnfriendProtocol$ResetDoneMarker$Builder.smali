.class public final Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnfriendProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1287
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1282
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    .locals 1

    .prologue
    .line 1282
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1337
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    .locals 3

    .prologue
    .line 1290
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;-><init>()V

    .line 1291
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;-><init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    .line 1292
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1328
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 3

    .prologue
    .line 1341
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    if-nez v1, :cond_0

    .line 1342
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    .line 1346
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    .line 1347
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    .locals 2

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    if-nez v0, :cond_0

    .line 1301
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1304
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;-><init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    .line 1305
    return-object p0
.end method

.method public clearProvider()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    .locals 2

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->hasProvider:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->access$3902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;Z)Z

    .line 1368
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->getProvider()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->provider_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->access$4002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;Ljava/lang/String;)Ljava/lang/String;

    .line 1369
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    .locals 2

    .prologue
    .line 1309
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

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
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1

    .prologue
    .line 1318
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1314
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasProvider()Z
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->hasProvider()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1359
    if-nez p1, :cond_0

    .line 1360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->hasProvider:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->access$3902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;Z)Z

    .line 1363
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->provider_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;->access$4002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;Ljava/lang/String;)Ljava/lang/String;

    .line 1364
    return-object p0
.end method
