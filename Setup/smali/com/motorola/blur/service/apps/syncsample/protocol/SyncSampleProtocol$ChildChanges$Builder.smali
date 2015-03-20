.class public final Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncSampleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2050
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5900(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2045
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 1

    .prologue
    .line 2045
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2096
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2100
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 3

    .prologue
    .line 2053
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;-><init>()V

    .line 2054
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;-><init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    .line 2055
    return-object v0
.end method


# virtual methods
.method public addAdds(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6202(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2161
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2162
    return-object p0
.end method

.method public addAdds(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    .prologue
    .line 2148
    if-nez p1, :cond_0

    .line 2149
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2151
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2152
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6202(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2154
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2155
    return-object p0
.end method

.method public addAllAdds(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;",
            ">;)",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 2166
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2167
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6202(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2169
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2170
    return-object p0
.end method

.method public addAllDeletions(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;",
            ">;)",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 2268
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2271
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2272
    return-object p0
.end method

.method public addAllMods(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;",
            ">;)",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 2217
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2218
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6302(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2220
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2221
    return-object p0
.end method

.method public addDeletions(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2261
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2263
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2264
    return-object p0
.end method

.method public addDeletions(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    .prologue
    .line 2250
    if-nez p1, :cond_0

    .line 2251
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2253
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2254
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2256
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2257
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2210
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6302(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2212
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2213
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    .prologue
    .line 2199
    if-nez p1, :cond_0

    .line 2200
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2202
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2203
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6302(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2205
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2206
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    .locals 1

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2091
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    .locals 3

    .prologue
    .line 2104
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    if-nez v1, :cond_0

    .line 2105
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2108
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 2109
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6202(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2112
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 2113
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6302(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2116
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 2117
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2120
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    .line 2121
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    .line 2122
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    if-nez v0, :cond_0

    .line 2064
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2067
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;-><init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    .line 2068
    return-object p0
.end method

.method public clearAdds()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6202(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2174
    return-object p0
.end method

.method public clearDeletions()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2276
    return-object p0
.end method

.method public clearMods()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6302(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;Ljava/util/List;)Ljava/util/List;

    .line 2225
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2

    .prologue
    .line 2072
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

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
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdds(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->getAdds(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v0

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->getAddsCount()I

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
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    .locals 1

    .prologue
    .line 2081
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDeletions(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->getDeletions(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v0

    return-object v0
.end method

.method public getDeletionsCount()I
    .locals 1

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->getDeletionsCount()I

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
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2077
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->getMods(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v0

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->getModsCount()I

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
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2045
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2145
    return-object p0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    .prologue
    .line 2137
    if-nez p2, :cond_0

    .line 2138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2140
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2141
    return-object p0
.end method

.method public setDeletions(ILcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2247
    return-object p0
.end method

.method public setDeletions(ILcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    .prologue
    .line 2239
    if-nez p2, :cond_0

    .line 2240
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2242
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->deletions_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6400(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2243
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2196
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Child;

    .prologue
    .line 2188
    if-nez p2, :cond_0

    .line 2189
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2191
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->access$6300(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2192
    return-object p0
.end method
