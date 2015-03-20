.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ClientSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1457
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5400(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1452
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 1

    .prologue
    .line 1452
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1503
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1507
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 3

    .prologue
    .line 1460
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;-><init>()V

    .line 1461
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    .line 1462
    return-object v0
.end method


# virtual methods
.method public addAdds(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1569
    return-object p0
.end method

.method public addAdds(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    .prologue
    .line 1555
    if-nez p1, :cond_0

    .line 1556
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1559
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1561
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1562
    return-object p0
.end method

.method public addAllAdds(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;",
            ">;)",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 1573
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1577
    return-object p0
.end method

.method public addAllDeletions(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;",
            ">;)",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 1675
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1678
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1679
    return-object p0
.end method

.method public addAllMods(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;",
            ">;)",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 1624
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1627
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1628
    return-object p0
.end method

.method public addDeletions(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1670
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1671
    return-object p0
.end method

.method public addDeletions(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    .prologue
    .line 1657
    if-nez p1, :cond_0

    .line 1658
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1660
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1661
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1663
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1664
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    .prologue
    .line 1606
    if-nez p1, :cond_0

    .line 1607
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1609
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1612
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1613
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1498
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 3

    .prologue
    .line 1511
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    if-nez v1, :cond_0

    .line 1512
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1515
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1516
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1519
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 1520
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1523
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 1524
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1527
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    .line 1528
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    .line 1529
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    if-nez v0, :cond_0

    .line 1471
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1474
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    .line 1475
    return-object p0
.end method

.method public clearAdds()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1581
    return-object p0
.end method

.method public clearDeletions()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1683
    return-object p0
.end method

.method public clearMods()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 1632
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2

    .prologue
    .line 1479
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

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
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdds(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->getAdds(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    move-result-object v0

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->getAddsCount()I

    move-result v0

    return v0
.end method

.method public getAddsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1

    .prologue
    .line 1488
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDeletions(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->getDeletions(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    move-result-object v0

    return-object v0
.end method

.method public getDeletionsCount()I
    .locals 1

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->getDeletionsCount()I

    move-result v0

    return v0
.end method

.method public getDeletionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1484
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->getMods(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    move-result-object v0

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->getModsCount()I

    move-result v0

    return v0
.end method

.method public getModsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;
    .locals 1

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1552
    return-object p0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    .prologue
    .line 1544
    if-nez p2, :cond_0

    .line 1545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1547
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1548
    return-object p0
.end method

.method public setDeletions(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1654
    return-object p0
.end method

.method public setDeletions(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    .prologue
    .line 1646
    if-nez p2, :cond_0

    .line 1647
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1649
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1650
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1603
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Services;

    .prologue
    .line 1595
    if-nez p2, :cond_0

    .line 1596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;->access$5800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1599
    return-object p0
.end method
