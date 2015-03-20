.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12015
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$42800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12010
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$42900()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 1

    .prologue
    .line 12010
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12061
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12062
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 12065
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 3

    .prologue
    .line 12018
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;-><init>()V

    .line 12019
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    .line 12020
    return-object v0
.end method


# virtual methods
.method public addAllAssociations(Ljava/lang/Iterable;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;",
            ">;)",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 12144
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12145
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Ljava/util/List;)Ljava/util/List;

    .line 12147
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12148
    return-object p0
.end method

.method public addAssociations(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    .prologue
    .line 12136
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12137
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Ljava/util/List;)Ljava/util/List;

    .line 12139
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12140
    return-object p0
.end method

.method public addAssociations(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .prologue
    .line 12126
    if-nez p1, :cond_0

    .line 12127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12129
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12130
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Ljava/util/List;)Ljava/util/List;

    .line 12132
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12133
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1

    .prologue
    .line 12053
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12054
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 12056
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 3

    .prologue
    .line 12069
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    if-nez v1, :cond_0

    .line 12070
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12073
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 12074
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    iget-object v2, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Ljava/util/List;)Ljava/util/List;

    .line 12077
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    .line 12078
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    .line 12079
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 2

    .prologue
    .line 12028
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    if-nez v0, :cond_0

    .line 12029
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12032
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    .line 12033
    return-object p0
.end method

.method public clearAssociations()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 2

    .prologue
    .line 12151
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Ljava/util/List;)Ljava/util/List;

    .line 12152
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 2

    .prologue
    .line 12099
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Z)Z

    .line 12100
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 12101
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 2

    .prologue
    .line 12187
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Z)Z

    .line 12188
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 12189
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 2

    .prologue
    .line 12037
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

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
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAssociations(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 12112
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->getAssociations(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public getAssociationsCount()I
    .locals 1

    .prologue
    .line 12109
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->getAssociationsCount()I

    move-result v0

    return v0
.end method

.method public getAssociationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12106
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1

    .prologue
    .line 12046
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12042
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 12088
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 12160
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 12085
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 12157
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 12010
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;
    .locals 1

    .prologue
    .line 12024
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 12050
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 12176
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12178
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 12183
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Z)Z

    .line 12184
    return-object p0

    .line 12181
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setAssociations(ILcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    .prologue
    .line 12122
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12123
    return-object p0
.end method

.method public setAssociations(ILcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .prologue
    .line 12115
    if-nez p2, :cond_0

    .line 12116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12118
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12119
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 12091
    if-nez p1, :cond_0

    .line 12092
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12094
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Z)Z

    .line 12095
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 12096
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 12171
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Z)Z

    .line 12172
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 12173
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 12163
    if-nez p1, :cond_0

    .line 12164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12166
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Z)Z

    .line 12167
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;->access$43502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 12168
    return-object p0
.end method
