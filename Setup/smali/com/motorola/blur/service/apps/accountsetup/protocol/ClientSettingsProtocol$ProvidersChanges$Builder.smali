.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ClientSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 1

    .prologue
    .line 559
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 614
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 3

    .prologue
    .line 567
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;-><init>()V

    .line 568
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    .line 569
    return-object v0
.end method


# virtual methods
.method public addAdds(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    return-object p0
.end method

.method public addAdds(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    .prologue
    .line 662
    if-nez p1, :cond_0

    .line 663
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    return-object p0
.end method

.method public addAllAdds(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;",
            ">;)",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 680
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 684
    return-object p0
.end method

.method public addAllDeletions(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;",
            ">;)",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 782
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 786
    return-object p0
.end method

.method public addAllMods(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;",
            ">;)",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 731
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2100(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2100(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 735
    return-object p0
.end method

.method public addDeletions(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    return-object p0
.end method

.method public addDeletions(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    .prologue
    .line 764
    if-nez p1, :cond_0

    .line 765
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2100(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2100(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    .prologue
    .line 713
    if-nez p1, :cond_0

    .line 714
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2100(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2100(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 605
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;
    .locals 3

    .prologue
    .line 618
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    if-nez v1, :cond_0

    .line 619
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 622
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 623
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 626
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2100(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 627
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2100(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 630
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 631
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    .line 635
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    .line 636
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    .line 582
    return-object p0
.end method

.method public clearAdds()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 688
    return-object p0
.end method

.method public clearDeletions()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 790
    return-object p0
.end method

.method public clearMods()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;Ljava/util/List;)Ljava/util/List;

    .line 739
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2

    .prologue
    .line 586
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;

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
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdds(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 648
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->getAdds(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->getAddsCount()I

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
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;
    .locals 1

    .prologue
    .line 595
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDeletions(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 750
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->getDeletions(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public getDeletionsCount()I
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->getDeletionsCount()I

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
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 744
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 591
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 699
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->getMods(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->getModsCount()I

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
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2100(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 659
    return-object p0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    .prologue
    .line 651
    if-nez p2, :cond_0

    .line 652
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 655
    return-object p0
.end method

.method public setDeletions(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 761
    return-object p0
.end method

.method public setDeletions(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    .prologue
    .line 753
    if-nez p2, :cond_0

    .line 754
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2200(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 757
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2100(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 710
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    .prologue
    .line 702
    if-nez p2, :cond_0

    .line 703
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;->access$2100(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ProvidersChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 706
    return-object p0
.end method
