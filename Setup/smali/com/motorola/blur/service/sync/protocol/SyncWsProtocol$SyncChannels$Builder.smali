.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3783
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$15700(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3778
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15800()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .locals 1

    .prologue
    .line 3778
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3829
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3830
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3833
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .locals 3

    .prologue
    .line 3786
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;-><init>()V

    .line 3787
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    new-instance v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    .line 3788
    return-object v0
.end method


# virtual methods
.method public addAllChannels(Ljava/lang/Iterable;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;",
            ">;)",
            "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;"
        }
    .end annotation

    .prologue
    .line 3891
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3892
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;Ljava/util/List;)Ljava/util/List;

    .line 3894
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3895
    return-object p0
.end method

.method public addChannels(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    .prologue
    .line 3883
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3884
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;Ljava/util/List;)Ljava/util/List;

    .line 3886
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3887
    return-object p0
.end method

.method public addChannels(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .prologue
    .line 3873
    if-nez p1, :cond_0

    .line 3874
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3876
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3877
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;Ljava/util/List;)Ljava/util/List;

    .line 3879
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3880
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1

    .prologue
    .line 3821
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3822
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3824
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 3

    .prologue
    .line 3837
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    if-nez v1, :cond_0

    .line 3838
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3841
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 3842
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    iget-object v2, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;Ljava/util/List;)Ljava/util/List;

    .line 3845
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    .line 3846
    .local v0, "returnMe":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    .line 3847
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .locals 2

    .prologue
    .line 3796
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    if-nez v0, :cond_0

    .line 3797
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3800
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    .line 3801
    return-object p0
.end method

.method public clearChannels()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .locals 2

    .prologue
    .line 3898
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;Ljava/util/List;)Ljava/util/List;

    .line 3899
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .locals 2

    .prologue
    .line 3805
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

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
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChannels(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3859
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->getChannels(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public getChannelsCount()I
    .locals 1

    .prologue
    .line 3856
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->getChannelsCount()I

    move-result v0

    return v0
.end method

.method public getChannelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3853
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1

    .prologue
    .line 3814
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3810
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;
    .locals 1

    .prologue
    .line 3792
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3818
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setChannels(ILcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    .prologue
    .line 3869
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3870
    return-object p0
.end method

.method public setChannels(ILcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .prologue
    .line 3862
    if-nez p2, :cond_0

    .line 3863
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3865
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;

    # getter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->channels_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;->access$16000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannels;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3866
    return-object p0
.end method
