.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5114
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$19900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5109
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20000()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 1

    .prologue
    .line 5109
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5160
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5161
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5164
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 3

    .prologue
    .line 5117
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;-><init>()V

    .line 5118
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    .line 5119
    return-object v0
.end method


# virtual methods
.method public addAllSam(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;",
            ">;)",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 5240
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5241
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;Ljava/util/List;)Ljava/util/List;

    .line 5243
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5244
    return-object p0
.end method

.method public addSam(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    .prologue
    .line 5232
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5233
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;Ljava/util/List;)Ljava/util/List;

    .line 5235
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5236
    return-object p0
.end method

.method public addSam(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    .prologue
    .line 5222
    if-nez p1, :cond_0

    .line 5223
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5225
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5226
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;Ljava/util/List;)Ljava/util/List;

    .line 5228
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5229
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1

    .prologue
    .line 5152
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5153
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5155
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 3

    .prologue
    .line 5168
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    if-nez v1, :cond_0

    .line 5169
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5172
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 5173
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;Ljava/util/List;)Ljava/util/List;

    .line 5176
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    .line 5177
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    .line 5178
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 2

    .prologue
    .line 5127
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    if-nez v0, :cond_0

    .line 5128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5131
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    .line 5132
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5195
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;Z)Z

    .line 5196
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->error_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;I)I

    .line 5197
    return-object p0
.end method

.method public clearSam()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 2

    .prologue
    .line 5247
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;Ljava/util/List;)Ljava/util/List;

    .line 5248
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 2

    .prologue
    .line 5136
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

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
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1

    .prologue
    .line 5145
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5141
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 5187
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->getError()I

    move-result v0

    return v0
.end method

.method public getSam(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5208
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->getSam(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public getSamCount()I
    .locals 1

    .prologue
    .line 5205
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->getSamCount()I

    move-result v0

    return v0
.end method

.method public getSamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5202
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 5184
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5109
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;
    .locals 1

    .prologue
    .line 5123
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5149
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setError(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 5190
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;Z)Z

    .line 5191
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->error_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;I)I

    .line 5192
    return-object p0
.end method

.method public setSam(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    .prologue
    .line 5218
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5219
    return-object p0
.end method

.method public setSam(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    .prologue
    .line 5211
    if-nez p2, :cond_0

    .line 5212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5214
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;->access$20200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5215
    return-object p0
.end method
