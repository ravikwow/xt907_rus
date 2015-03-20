.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1576
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1571
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 1

    .prologue
    .line 1571
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1626
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 3

    .prologue
    .line 1579
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;-><init>()V

    .line 1580
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    .line 1581
    return-object v0
.end method


# virtual methods
.method public addAllSam(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;",
            ">;)",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;"
        }
    .end annotation

    .prologue
    .line 1684
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1687
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1688
    return-object p0
.end method

.method public addSam(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1679
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1680
    return-object p0
.end method

.method public addSam(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    .prologue
    .line 1666
    if-nez p1, :cond_0

    .line 1667
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1670
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1672
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1673
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1617
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 3

    .prologue
    .line 1630
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    if-nez v1, :cond_0

    .line 1631
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1634
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1635
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1638
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    .line 1639
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    .line 1640
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 2

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    if-nez v0, :cond_0

    .line 1590
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1593
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    .line 1594
    return-object p0
.end method

.method public clearMaxAnchor()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 2

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->hasMaxAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Z)Z

    .line 1712
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->getMaxAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->maxAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Ljava/lang/String;)Ljava/lang/String;

    .line 1713
    return-object p0
.end method

.method public clearSam()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 2

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1692
    return-object p0
.end method

.method public clearSyncStatus()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 2

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->hasSyncStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$4002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Z)Z

    .line 1733
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->getSyncStatus()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->syncStatus_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$4102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Ljava/lang/String;)Ljava/lang/String;

    .line 1734
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 2

    .prologue
    .line 1598
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

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
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1

    .prologue
    .line 1607
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1603
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->getMaxAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSam(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->getSam(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public getSamCount()I
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->getSamCount()I

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
    .line 1646
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSyncStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->getSyncStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMaxAnchor()Z
    .locals 1

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->hasMaxAnchor()Z

    move-result v0

    return v0
.end method

.method public hasSyncStatus()Z
    .locals 1

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->hasSyncStatus()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setMaxAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1703
    if-nez p1, :cond_0

    .line 1704
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1706
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->hasMaxAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Z)Z

    .line 1707
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->maxAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Ljava/lang/String;)Ljava/lang/String;

    .line 1708
    return-object p0
.end method

.method public setSam(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1663
    return-object p0
.end method

.method public setSam(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    .prologue
    .line 1655
    if-nez p2, :cond_0

    .line 1656
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->sam_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$3700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1659
    return-object p0
.end method

.method public setSyncStatus(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1724
    if-nez p1, :cond_0

    .line 1725
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1727
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->hasSyncStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$4002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Z)Z

    .line 1728
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->syncStatus_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;->access$4102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;Ljava/lang/String;)Ljava/lang/String;

    .line 1729
    return-object p0
.end method
