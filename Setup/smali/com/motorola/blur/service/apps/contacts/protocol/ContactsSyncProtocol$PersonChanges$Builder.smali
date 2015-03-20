.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 1

    .prologue
    .line 514
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 3

    .prologue
    .line 522
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;-><init>()V

    .line 523
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    .line 524
    return-object v0
.end method


# virtual methods
.method public addAdds(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    return-object p0
.end method

.method public addAdds(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .prologue
    .line 617
    if-nez p1, :cond_0

    .line 618
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    return-object p0
.end method

.method public addAllAdds(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 635
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 639
    return-object p0
.end method

.method public addAllDeletes(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 737
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 741
    return-object p0
.end method

.method public addAllMods(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 686
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 690
    return-object p0
.end method

.method public addDeletes(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    return-object p0
.end method

.method public addDeletes(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .prologue
    .line 719
    if-nez p1, :cond_0

    .line 720
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .prologue
    .line 668
    if-nez p1, :cond_0

    .line 669
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 560
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    .locals 3

    .prologue
    .line 573
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    if-nez v1, :cond_0

    .line 574
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 578
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 581
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 582
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 585
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 586
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 589
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    .line 590
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    .line 591
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    .line 537
    return-object p0
.end method

.method public clearAdds()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 643
    return-object p0
.end method

.method public clearDeletes()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 745
    return-object p0
.end method

.method public clearMods()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;Ljava/util/List;)Ljava/util/List;

    .line 694
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2

    .prologue
    .line 541
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

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
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdds(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 603
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->getAdds(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->getAddsCount()I

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
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    .locals 1

    .prologue
    .line 550
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDeletes(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 705
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->getDeletes(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public getDeletesCount()I
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->getDeletesCount()I

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
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 546
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 654
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->getMods(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v0

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->getModsCount()I

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
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 614
    return-object p0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .prologue
    .line 606
    if-nez p2, :cond_0

    .line 607
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1800(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 610
    return-object p0
.end method

.method public setDeletes(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 716
    return-object p0
.end method

.method public setDeletes(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .prologue
    .line 708
    if-nez p2, :cond_0

    .line 709
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$2000(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 712
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;

    .prologue
    .line 664
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 665
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;

    .prologue
    .line 657
    if-nez p2, :cond_0

    .line 658
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;->access$1900(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$PersonChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 661
    return-object p0
.end method
