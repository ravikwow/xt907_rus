.class public final Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnfriendProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 1

    .prologue
    .line 458
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 513
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 3

    .prologue
    .line 466
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;-><init>()V

    .line 467
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;-><init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    .line 468
    return-object v0
.end method


# virtual methods
.method public addAdds(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    .prologue
    .line 575
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    return-object p0
.end method

.method public addAdds(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    .prologue
    .line 565
    if-nez p1, :cond_0

    .line 566
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    return-object p0
.end method

.method public addAllAdds(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;",
            ">;)",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 587
    return-object p0
.end method

.method public addAllDeletes(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;",
            ">;)",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 685
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1402(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 689
    return-object p0
.end method

.method public addAllMods(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;",
            ">;)",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1302(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 638
    return-object p0
.end method

.method public addAllResetDoneMarker(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;",
            ">;)",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 736
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1500(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1502(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1500(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 740
    return-object p0
.end method

.method public addDeletes(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1402(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    return-object p0
.end method

.method public addDeletes(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    .prologue
    .line 667
    if-nez p1, :cond_0

    .line 668
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1402(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1302(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    .prologue
    .line 616
    if-nez p1, :cond_0

    .line 617
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1302(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    return-object p0
.end method

.method public addResetDoneMarker(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    .prologue
    .line 728
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1500(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1502(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1500(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    return-object p0
.end method

.method public addResetDoneMarker(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    .prologue
    .line 718
    if-nez p1, :cond_0

    .line 719
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1500(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1502(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1500(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    .locals 3

    .prologue
    .line 517
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    if-nez v1, :cond_0

    .line 518
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 522
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 526
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1302(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 529
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 530
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1402(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 533
    :cond_3
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1500(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_4

    .line 534
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1500(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1502(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 537
    :cond_4
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    .line 538
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    .line 539
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;-><init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    .line 481
    return-object p0
.end method

.method public clearAdds()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 591
    return-object p0
.end method

.method public clearDeletes()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1402(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 693
    return-object p0
.end method

.method public clearMods()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1302(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 642
    return-object p0
.end method

.method public clearResetDoneMarker()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1502(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;Ljava/util/List;)Ljava/util/List;

    .line 744
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2

    .prologue
    .line 485
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

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
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdds(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 551
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->getAdds(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->getAddsCount()I

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
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    .locals 1

    .prologue
    .line 494
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDeletes(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 653
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->getDeletes(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public getDeletesCount()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->getDeletesCount()I

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
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 490
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 602
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->getMods(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->getModsCount()I

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
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResetDoneMarker(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 704
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->getResetDoneMarker(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v0

    return-object v0
.end method

.method public getResetDoneMarkerCount()I
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->getResetDoneMarkerCount()I

    move-result v0

    return v0
.end method

.method public getResetDoneMarkerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1500(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 562
    return-object p0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    .prologue
    .line 554
    if-nez p2, :cond_0

    .line 555
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 558
    return-object p0
.end method

.method public setDeletes(ILcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 664
    return-object p0
.end method

.method public setDeletes(ILcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    .prologue
    .line 656
    if-nez p2, :cond_0

    .line 657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1400(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 660
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 613
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    .prologue
    .line 605
    if-nez p2, :cond_0

    .line 606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 609
    return-object p0
.end method

.method public setResetDoneMarker(ILcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1500(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 715
    return-object p0
.end method

.method public setResetDoneMarker(ILcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ResetDoneMarker;

    .prologue
    .line 707
    if-nez p2, :cond_0

    .line 708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->resetDoneMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->access$1500(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 711
    return-object p0
.end method
