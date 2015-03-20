.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1477
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4600(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1472
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 1

    .prologue
    .line 1472
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1523
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1527
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 3

    .prologue
    .line 1480
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;-><init>()V

    .line 1481
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    new-instance v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;-><init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 1482
    return-object v0
.end method


# virtual methods
.method public addAllNetworks(Ljava/lang/Iterable;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;",
            ">;)",
            "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 1603
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;Ljava/util/List;)Ljava/util/List;

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1607
    return-object p0
.end method

.method public addNetworks(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;Ljava/util/List;)Ljava/util/List;

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    return-object p0
.end method

.method public addNetworks(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    .prologue
    .line 1585
    if-nez p1, :cond_0

    .line 1586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1589
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;Ljava/util/List;)Ljava/util/List;

    .line 1591
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1518
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 3

    .prologue
    .line 1531
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    if-nez v1, :cond_0

    .line 1532
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1535
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1536
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    iget-object v2, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;Ljava/util/List;)Ljava/util/List;

    .line 1539
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 1540
    .local v0, "returnMe":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 1541
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 2

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    if-nez v0, :cond_0

    .line 1491
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1494
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;-><init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 1495
    return-object p0
.end method

.method public clearCloudid()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1558
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->hasCloudid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$5002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;Z)Z

    .line 1559
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->cloudid_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$5102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;I)I

    .line 1560
    return-object p0
.end method

.method public clearNetworks()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 2

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;Ljava/util/List;)Ljava/util/List;

    .line 1611
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 2

    .prologue
    .line 1499
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

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
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCloudid()I
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getCloudid()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1

    .prologue
    .line 1508
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1504
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getNetworks(I)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getNetworks(I)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNetworksCount()I
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getNetworksCount()I

    move-result v0

    return v0
.end method

.method public getNetworksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCloudid()Z
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->hasCloudid()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->internalGetResult()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setCloudid(I)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->hasCloudid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$5002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;Z)Z

    .line 1554
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->cloudid_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$5102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;I)I

    .line 1555
    return-object p0
.end method

.method public setNetworks(ILcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1582
    return-object p0
.end method

.method public setNetworks(ILcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    .prologue
    .line 1574
    if-nez p2, :cond_0

    .line 1575
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->networks_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->access$4900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1578
    return-object p0
.end method
