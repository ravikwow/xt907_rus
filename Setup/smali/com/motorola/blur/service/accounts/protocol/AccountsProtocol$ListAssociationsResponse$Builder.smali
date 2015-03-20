.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5372
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$17200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5367
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17300()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 1

    .prologue
    .line 5367
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5418
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5419
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5422
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 3

    .prologue
    .line 5375
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;-><init>()V

    .line 5376
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    .line 5377
    return-object v0
.end method


# virtual methods
.method public addAllAssociations(Ljava/lang/Iterable;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;",
            ">;)",
            "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 5501
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5502
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Ljava/util/List;)Ljava/util/List;

    .line 5504
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5505
    return-object p0
.end method

.method public addAssociations(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    .prologue
    .line 5493
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5494
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Ljava/util/List;)Ljava/util/List;

    .line 5496
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5497
    return-object p0
.end method

.method public addAssociations(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    .prologue
    .line 5483
    if-nez p1, :cond_0

    .line 5484
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5486
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5487
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Ljava/util/List;)Ljava/util/List;

    .line 5489
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5490
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1

    .prologue
    .line 5410
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5411
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5413
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 3

    .prologue
    .line 5426
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    if-nez v1, :cond_0

    .line 5427
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5430
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 5431
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    iget-object v2, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Ljava/util/List;)Ljava/util/List;

    .line 5434
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    .line 5435
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    .line 5436
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 2

    .prologue
    .line 5385
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    if-nez v0, :cond_0

    .line 5386
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5389
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    .line 5390
    return-object p0
.end method

.method public clearAssociations()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 2

    .prologue
    .line 5508
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Ljava/util/List;)Ljava/util/List;

    .line 5509
    return-object p0
.end method

.method public clearCaptchaInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 2

    .prologue
    .line 5544
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Z)Z

    .line 5545
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 5546
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 2

    .prologue
    .line 5456
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Z)Z

    .line 5457
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;

    .line 5458
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 2

    .prologue
    .line 5394
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

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
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAssociations(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5469
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->getAssociations(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAssociationsCount()I
    .locals 1

    .prologue
    .line 5466
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->getAssociationsCount()I

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
            "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5463
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1

    .prologue
    .line 5517
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1

    .prologue
    .line 5403
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5399
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;
    .locals 1

    .prologue
    .line 5445
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public hasCaptchaInfo()Z
    .locals 1

    .prologue
    .line 5514
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->hasCaptchaInfo()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 5442
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5367
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;
    .locals 1

    .prologue
    .line 5381
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5407
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .prologue
    .line 5533
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->hasCaptchaInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5535
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 5540
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Z)Z

    .line 5541
    return-object p0

    .line 5538
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    goto :goto_0
.end method

.method public setAssociations(ILcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;

    .prologue
    .line 5479
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5480
    return-object p0
.end method

.method public setAssociations(ILcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AssociationInfo;

    .prologue
    .line 5472
    if-nez p2, :cond_0

    .line 5473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5475
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->associations_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5476
    return-object p0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;

    .prologue
    .line 5528
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Z)Z

    .line 5529
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 5530
    return-object p0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .prologue
    .line 5520
    if-nez p1, :cond_0

    .line 5521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5523
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Z)Z

    .line 5524
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 5525
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;

    .prologue
    .line 5448
    if-nez p1, :cond_0

    .line 5449
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5451
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Z)Z

    .line 5452
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;->access$17702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ListAssociationsResponse$Error;

    .line 5453
    return-object p0
.end method
