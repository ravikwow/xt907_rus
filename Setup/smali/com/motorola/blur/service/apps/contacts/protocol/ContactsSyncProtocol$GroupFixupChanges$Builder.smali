.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1674
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1669
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 1

    .prologue
    .line 1669
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1720
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1724
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 3

    .prologue
    .line 1677
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;-><init>()V

    .line 1678
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    .line 1679
    return-object v0
.end method


# virtual methods
.method public addAdds(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1786
    return-object p0
.end method

.method public addAdds(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    .prologue
    .line 1772
    if-nez p1, :cond_0

    .line 1773
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1776
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1778
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1779
    return-object p0
.end method

.method public addAllAdds(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 1790
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1791
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1794
    return-object p0
.end method

.method public addAllDeletes(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 1892
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1895
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1896
    return-object p0
.end method

.method public addAllMods(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 1841
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1844
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1845
    return-object p0
.end method

.method public addDeletes(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1888
    return-object p0
.end method

.method public addDeletes(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    .prologue
    .line 1874
    if-nez p1, :cond_0

    .line 1875
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1877
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1878
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1880
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1881
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1836
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1837
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    .prologue
    .line 1823
    if-nez p1, :cond_0

    .line 1824
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1826
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1827
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1829
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1830
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1715
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    .locals 3

    .prologue
    .line 1728
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    if-nez v1, :cond_0

    .line 1729
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1732
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1733
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1736
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 1737
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1740
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 1741
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1744
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    .line 1745
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    .line 1746
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    if-nez v0, :cond_0

    .line 1688
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1691
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    .line 1692
    return-object p0
.end method

.method public clearAdds()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1798
    return-object p0
.end method

.method public clearDeletes()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1900
    return-object p0
.end method

.method public clearMods()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1849
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2

    .prologue
    .line 1696
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

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
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdds(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->getAdds(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->getAddsCount()I

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
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    .locals 1

    .prologue
    .line 1705
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDeletes(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->getDeletes(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public getDeletesCount()I
    .locals 1

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->getDeletesCount()I

    move-result v0

    return v0
.end method

.method public getDeletesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1701
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->getMods(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->getModsCount()I

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
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1669
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;
    .locals 1

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1769
    return-object p0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    .prologue
    .line 1761
    if-nez p2, :cond_0

    .line 1762
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1764
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1765
    return-object p0
.end method

.method public setDeletes(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1871
    return-object p0
.end method

.method public setDeletes(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    .prologue
    .line 1863
    if-nez p2, :cond_0

    .line 1864
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1866
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1867
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1820
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    .prologue
    .line 1812
    if-nez p2, :cond_0

    .line 1813
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1815
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;->access$4300(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1816
    return-object p0
.end method
