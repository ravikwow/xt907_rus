.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 933
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 3

    .prologue
    .line 886
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;-><init>()V

    .line 887
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .line 888
    return-object v0
.end method


# virtual methods
.method public addAdds(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    .prologue
    .line 991
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    return-object p0
.end method

.method public addAdds(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .prologue
    .line 981
    if-nez p1, :cond_0

    .line 982
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    return-object p0
.end method

.method public addAllAdds(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;",
            ">;)",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 999
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1003
    return-object p0
.end method

.method public addAllDeletes(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;",
            ">;)",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 1101
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1105
    return-object p0
.end method

.method public addAllMods(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;",
            ">;)",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 1050
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1054
    return-object p0
.end method

.method public addDeletes(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    return-object p0
.end method

.method public addDeletes(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .prologue
    .line 1083
    if-nez p1, :cond_0

    .line 1084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 1089
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .prologue
    .line 1032
    if-nez p1, :cond_0

    .line 1033
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 924
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 3

    .prologue
    .line 937
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    if-nez v1, :cond_0

    .line 938
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 941
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 942
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 945
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 946
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 949
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 950
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 953
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .line 954
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .line 955
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    if-nez v0, :cond_0

    .line 897
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .line 901
    return-object p0
.end method

.method public clearAdds()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 1007
    return-object p0
.end method

.method public clearDeletes()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 1109
    return-object p0
.end method

.method public clearMods()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;Ljava/util/List;)Ljava/util/List;

    .line 1058
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2

    .prologue
    .line 905
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

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
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdds(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 967
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->getAdds(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->getAddsCount()I

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
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;",
            ">;"
        }
    .end annotation

    .prologue
    .line 961
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1

    .prologue
    .line 914
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDeletes(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->getDeletes(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public getDeletesCount()I
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->getDeletesCount()I

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
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 910
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->getMods(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->getModsCount()I

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
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 978
    return-object p0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .prologue
    .line 970
    if-nez p2, :cond_0

    .line 971
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 974
    return-object p0
.end method

.method public setDeletes(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1080
    return-object p0
.end method

.method public setDeletes(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .prologue
    .line 1072
    if-nez p2, :cond_0

    .line 1073
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2400(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1076
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1029
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .prologue
    .line 1021
    if-nez p2, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->access$2300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1025
    return-object p0
.end method
