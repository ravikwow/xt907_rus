.class public final Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncSampleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1665
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5100(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1660
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 1

    .prologue
    .line 1660
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1711
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1715
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 3

    .prologue
    .line 1668
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;-><init>()V

    .line 1669
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;-><init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .line 1670
    return-object v0
.end method


# virtual methods
.method public addAdds(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1777
    return-object p0
.end method

.method public addAdds(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    .prologue
    .line 1763
    if-nez p1, :cond_0

    .line 1764
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1766
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1767
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1769
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1770
    return-object p0
.end method

.method public addAllAdds(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;",
            ">;)",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 1781
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1784
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1785
    return-object p0
.end method

.method public addAllDeletions(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;",
            ">;)",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 1883
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1886
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1887
    return-object p0
.end method

.method public addAllMods(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;",
            ">;)",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 1832
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5500(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1833
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1835
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5500(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1836
    return-object p0
.end method

.method public addDeletions(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1879
    return-object p0
.end method

.method public addDeletions(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    .prologue
    .line 1865
    if-nez p1, :cond_0

    .line 1866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1869
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1871
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1872
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5500(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1825
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1827
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5500(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1828
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    .prologue
    .line 1814
    if-nez p1, :cond_0

    .line 1815
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1817
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5500(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1818
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1820
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5500(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1821
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1706
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 3

    .prologue
    .line 1719
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    if-nez v1, :cond_0

    .line 1720
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1723
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1724
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1727
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5500(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 1728
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5500(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1731
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 1732
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1735
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .line 1736
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .line 1737
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    if-nez v0, :cond_0

    .line 1679
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1682
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;-><init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .line 1683
    return-object p0
.end method

.method public clearAdds()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1789
    return-object p0
.end method

.method public clearDeletions()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1891
    return-object p0
.end method

.method public clearMods()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;Ljava/util/List;)Ljava/util/List;

    .line 1840
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2

    .prologue
    .line 1687
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

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
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdds(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->getAdds(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->getAddsCount()I

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
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1

    .prologue
    .line 1696
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDeletions(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->getDeletions(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public getDeletionsCount()I
    .locals 1

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->getDeletionsCount()I

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
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1692
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->getMods(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->getModsCount()I

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
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5500(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1660
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1760
    return-object p0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    .prologue
    .line 1752
    if-nez p2, :cond_0

    .line 1753
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1756
    return-object p0
.end method

.method public setDeletions(ILcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1862
    return-object p0
.end method

.method public setDeletions(ILcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    .prologue
    .line 1854
    if-nez p2, :cond_0

    .line 1855
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1857
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1858
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5500(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1811
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    .prologue
    .line 1803
    if-nez p2, :cond_0

    .line 1804
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1806
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->access$5500(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1807
    return-object p0
.end method
