.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4796
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$18700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4791
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18800()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 1

    .prologue
    .line 4791
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4842
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4843
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4846
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 3

    .prologue
    .line 4799
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;-><init>()V

    .line 4800
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    .line 4801
    return-object v0
.end method


# virtual methods
.method public addAllUserParams(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;",
            ">;)",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;"
        }
    .end annotation

    .prologue
    .line 4964
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4965
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Ljava/util/List;)Ljava/util/List;

    .line 4967
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4968
    return-object p0
.end method

.method public addUserParams(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    .prologue
    .line 4956
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4957
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Ljava/util/List;)Ljava/util/List;

    .line 4959
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4960
    return-object p0
.end method

.method public addUserParams(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    .prologue
    .line 4946
    if-nez p1, :cond_0

    .line 4947
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4949
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4950
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Ljava/util/List;)Ljava/util/List;

    .line 4952
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4953
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1

    .prologue
    .line 4834
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4835
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4837
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 3

    .prologue
    .line 4850
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    if-nez v1, :cond_0

    .line 4851
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4854
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 4855
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Ljava/util/List;)Ljava/util/List;

    .line 4858
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    .line 4859
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    .line 4860
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 2

    .prologue
    .line 4809
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    if-nez v0, :cond_0

    .line 4810
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4813
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    .line 4814
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 2

    .prologue
    .line 4898
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Z)Z

    .line 4899
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Ljava/lang/String;)Ljava/lang/String;

    .line 4900
    return-object p0
.end method

.method public clearProviderParams()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 2

    .prologue
    .line 4919
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasProviderParams:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Z)Z

    .line 4920
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->getProviderParams()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->providerParams_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Ljava/lang/String;)Ljava/lang/String;

    .line 4921
    return-object p0
.end method

.method public clearUserParams()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 2

    .prologue
    .line 4971
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Ljava/util/List;)Ljava/util/List;

    .line 4972
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4877
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Z)Z

    .line 4878
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;I)I

    .line 4879
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 2

    .prologue
    .line 4818
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

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
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1

    .prologue
    .line 4827
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4823
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4887
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4908
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->getProviderParams()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserParams(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4932
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->getUserParams(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public getUserParamsCount()I
    .locals 1

    .prologue
    .line 4929
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->getUserParamsCount()I

    move-result v0

    return v0
.end method

.method public getUserParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4926
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 4869
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 4884
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasProviderParams()Z
    .locals 1

    .prologue
    .line 4905
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasProviderParams()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 4866
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4791
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
    .locals 1

    .prologue
    .line 4805
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4831
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4890
    if-nez p1, :cond_0

    .line 4891
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4893
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Z)Z

    .line 4894
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Ljava/lang/String;)Ljava/lang/String;

    .line 4895
    return-object p0
.end method

.method public setProviderParams(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4911
    if-nez p1, :cond_0

    .line 4912
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4914
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasProviderParams:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Z)Z

    .line 4915
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->providerParams_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Ljava/lang/String;)Ljava/lang/String;

    .line 4916
    return-object p0
.end method

.method public setUserParams(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    .prologue
    .line 4942
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4943
    return-object p0
.end method

.method public setUserParams(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    .prologue
    .line 4935
    if-nez p2, :cond_0

    .line 4936
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4938
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->userParams_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4939
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 4872
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;Z)Z

    .line 4873
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->access$19202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;I)I

    .line 4874
    return-object p0
.end method
