.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ClientSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2400
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$9500(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2395
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9600()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 1

    .prologue
    .line 2395
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2446
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2447
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2450
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 3

    .prologue
    .line 2403
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;-><init>()V

    .line 2404
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    .line 2405
    return-object v0
.end method


# virtual methods
.method public addAdds(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2509
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2511
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2512
    return-object p0
.end method

.method public addAdds(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    .prologue
    .line 2498
    if-nez p1, :cond_0

    .line 2499
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2501
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2502
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2504
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2505
    return-object p0
.end method

.method public addAllAdds(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;",
            ">;)",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 2516
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2517
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2519
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2520
    return-object p0
.end method

.method public addAllDeletions(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;",
            ">;)",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 2618
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2619
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2621
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2622
    return-object p0
.end method

.method public addAllMods(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;",
            ">;)",
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 2567
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2568
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2570
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2571
    return-object p0
.end method

.method public addDeletions(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    .prologue
    .line 2610
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2611
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2613
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2614
    return-object p0
.end method

.method public addDeletions(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    .prologue
    .line 2600
    if-nez p1, :cond_0

    .line 2601
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2603
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2604
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2606
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2607
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2560
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2562
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2563
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    .prologue
    .line 2549
    if-nez p1, :cond_0

    .line 2550
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2552
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2553
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2555
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2556
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;
    .locals 1

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2439
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2441
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;
    .locals 3

    .prologue
    .line 2454
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    if-nez v1, :cond_0

    .line 2455
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2458
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 2459
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2462
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 2463
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2466
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 2467
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2470
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    .line 2471
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    .line 2472
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2

    .prologue
    .line 2413
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    if-nez v0, :cond_0

    .line 2414
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2417
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    .line 2418
    return-object p0
.end method

.method public clearAdds()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2

    .prologue
    .line 2523
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2524
    return-object p0
.end method

.method public clearDeletions()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2626
    return-object p0
.end method

.method public clearMods()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2

    .prologue
    .line 2574
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;Ljava/util/List;)Ljava/util/List;

    .line 2575
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2

    .prologue
    .line 2422
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;

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
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdds(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2484
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->getAdds(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v0

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->getAddsCount()I

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
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;
    .locals 1

    .prologue
    .line 2431
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDeletions(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->getDeletions(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v0

    return-object v0
.end method

.method public getDeletionsCount()I
    .locals 1

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->getDeletionsCount()I

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
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2580
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2427
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->getMods(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v0

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->getModsCount()I

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
            "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2395
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;
    .locals 1

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2495
    return-object p0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    .prologue
    .line 2487
    if-nez p2, :cond_0

    .line 2488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2490
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9800(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2491
    return-object p0
.end method

.method public setDeletions(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2597
    return-object p0
.end method

.method public setDeletions(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    .prologue
    .line 2589
    if-nez p2, :cond_0

    .line 2590
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2592
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$10000(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2593
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2546
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServices;

    .prologue
    .line 2538
    if-nez p2, :cond_0

    .line 2539
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2541
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;

    # getter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;->access$9900(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$ActiveServicesChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2542
    return-object p0
.end method
