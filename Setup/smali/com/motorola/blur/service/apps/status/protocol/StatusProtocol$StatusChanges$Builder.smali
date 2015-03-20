.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 1

    .prologue
    .line 493
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 3

    .prologue
    .line 501
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;-><init>()V

    .line 502
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .line 503
    return-object v0
.end method


# virtual methods
.method public addAdds(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    return-object p0
.end method

.method public addAdds(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .prologue
    .line 596
    if-nez p1, :cond_0

    .line 597
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    return-object p0
.end method

.method public addAllAdds(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;",
            ">;)",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 618
    return-object p0
.end method

.method public addAllDeletes(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;",
            ">;)",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 716
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 720
    return-object p0
.end method

.method public addAllMods(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;",
            ">;)",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 669
    return-object p0
.end method

.method public addDeletes(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    return-object p0
.end method

.method public addDeletes(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .prologue
    .line 698
    if-nez p1, :cond_0

    .line 699
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    .prologue
    .line 657
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .prologue
    .line 647
    if-nez p1, :cond_0

    .line 648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 3

    .prologue
    .line 552
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    if-nez v1, :cond_0

    .line 553
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 557
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 560
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 561
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 564
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 565
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .line 569
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .line 570
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .line 516
    return-object p0
.end method

.method public clearAdds()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 622
    return-object p0
.end method

.method public clearDeletes()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 724
    return-object p0
.end method

.method public clearMods()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;Ljava/util/List;)Ljava/util/List;

    .line 673
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2

    .prologue
    .line 520
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

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
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdds(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->getAdds(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->getAddsCount()I

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
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1

    .prologue
    .line 529
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDeletes(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 684
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->getDeletes(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public getDeletesCount()I
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->getDeletesCount()I

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
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 525
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 633
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->getMods(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->getModsCount()I

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
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 593
    return-object p0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .prologue
    .line 585
    if-nez p2, :cond_0

    .line 586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 589
    return-object p0
.end method

.method public setDeletes(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    .prologue
    .line 694
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 695
    return-object p0
.end method

.method public setDeletes(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .prologue
    .line 687
    if-nez p2, :cond_0

    .line 688
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 691
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 644
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .prologue
    .line 636
    if-nez p2, :cond_0

    .line 637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->access$1500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 640
    return-object p0
.end method
