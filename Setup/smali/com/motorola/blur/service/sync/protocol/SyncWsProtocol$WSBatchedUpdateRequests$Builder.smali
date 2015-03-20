.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;-><init>()V

    .line 227
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    new-instance v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    .line 228
    return-object v0
.end method


# virtual methods
.method public addAllRequests(Ljava/lang/Iterable;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;",
            ">;)",
            "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;Ljava/util/List;)Ljava/util/List;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 353
    return-object p0
.end method

.method public addRequests(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;Ljava/util/List;)Ljava/util/List;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    return-object p0
.end method

.method public addRequests(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 332
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;Ljava/util/List;)Ljava/util/List;

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 3

    .prologue
    .line 277
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    if-nez v1, :cond_0

    .line 278
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 282
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    iget-object v2, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;Ljava/util/List;)Ljava/util/List;

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    .line 286
    .local v0, "returnMe":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    .line 287
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    .line 241
    return-object p0
.end method

.method public clearMessageVersion()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->hasMessageVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;Z)Z

    .line 305
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->messageVersion_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;I)I

    .line 306
    return-object p0
.end method

.method public clearRequests()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;Ljava/util/List;)Ljava/util/List;

    .line 357
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 2

    .prologue
    .line 245
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

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
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 250
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageVersion()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->getMessageVersion()I

    move-result v0

    return v0
.end method

.method public getRequests(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->getRequests(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getRequestsCount()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->getRequestsCount()I

    move-result v0

    return v0
.end method

.method public getRequestsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMessageVersion()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->hasMessageVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setMessageVersion(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 299
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->hasMessageVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;Z)Z

    .line 300
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->messageVersion_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;I)I

    .line 301
    return-object p0
.end method

.method public setRequests(ILcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-object p0
.end method

.method public setRequests(ILcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequest;

    .prologue
    .line 320
    if-nez p2, :cond_0

    .line 321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->requests_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;->access$500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSBatchedUpdateRequests;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-object p0
.end method
