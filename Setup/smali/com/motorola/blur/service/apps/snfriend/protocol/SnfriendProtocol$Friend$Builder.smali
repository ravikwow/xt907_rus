.class public final Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnfriendProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1800(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 1

    .prologue
    .line 916
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 971
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 3

    .prologue
    .line 924
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;-><init>()V

    .line 925
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;-><init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    .line 926
    return-object v0
.end method


# virtual methods
.method public addAllUris(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;",
            ">;)",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;"
        }
    .end annotation

    .prologue
    .line 1149
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2100(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/util/List;)Ljava/util/List;

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2100(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1153
    return-object p0
.end method

.method public addUris(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2100(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/util/List;)Ljava/util/List;

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2100(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    return-object p0
.end method

.method public addUris(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    .prologue
    .line 1131
    if-nez p1, :cond_0

    .line 1132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2100(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/util/List;)Ljava/util/List;

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2100(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1138
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 962
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 3

    .prologue
    .line 975
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    if-nez v1, :cond_0

    .line 976
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 979
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2100(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 980
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2100(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/util/List;)Ljava/util/List;

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    .line 984
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    .line 985
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    if-nez v0, :cond_0

    .line 935
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;-><init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    .line 939
    return-object p0
.end method

.method public clearData()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2802(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1069
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getData()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->data_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/lang/String;)Ljava/lang/String;

    .line 1070
    return-object p0
.end method

.method public clearFriendid()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasFriendid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2602(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1048
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getFriendid()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->friendid_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2702(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/lang/String;)Ljava/lang/String;

    .line 1049
    return-object p0
.end method

.method public clearIsReset()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1086
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasIsReset:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$3002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1087
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->isReset_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$3102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1088
    return-object p0
.end method

.method public clearNonMutualFriend()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1104
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasNonMutualFriend:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$3202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1105
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->nonMutualFriend_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$3302(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1106
    return-object p0
.end method

.method public clearProvider()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasProvider:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2402(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1027
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getProvider()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->provider_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2502(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/lang/String;)Ljava/lang/String;

    .line 1028
    return-object p0
.end method

.method public clearSyncId()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1006
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getSyncId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->syncId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2302(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/lang/String;)Ljava/lang/String;

    .line 1007
    return-object p0
.end method

.method public clearUris()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/util/List;)Ljava/util/List;

    .line 1157
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2

    .prologue
    .line 943
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

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
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1

    .prologue
    .line 952
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 948
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFriendid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getFriendid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsReset()Z
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getIsReset()Z

    move-result v0

    return v0
.end method

.method public getNonMutualFriend()Z
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getNonMutualFriend()Z

    move-result v0

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getSyncId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUris(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getUris(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public getUrisCount()I
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->getUrisCount()I

    move-result v0

    return v0
.end method

.method public getUrisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2100(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasFriendid()Z
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasFriendid()Z

    move-result v0

    return v0
.end method

.method public hasIsReset()Z
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasIsReset()Z

    move-result v0

    return v0
.end method

.method public hasNonMutualFriend()Z
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasNonMutualFriend()Z

    move-result v0

    return v0
.end method

.method public hasProvider()Z
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasProvider()Z

    move-result v0

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasSyncId()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/lang/String;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1060
    if-nez p1, :cond_0

    .line 1061
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2802(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1064
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->data_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/lang/String;)Ljava/lang/String;

    .line 1065
    return-object p0
.end method

.method public setFriendid(Ljava/lang/String;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1039
    if-nez p1, :cond_0

    .line 1040
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasFriendid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2602(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1043
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->friendid_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2702(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/lang/String;)Ljava/lang/String;

    .line 1044
    return-object p0
.end method

.method public setIsReset(Z)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasIsReset:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$3002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1082
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->isReset_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$3102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1083
    return-object p0
.end method

.method public setNonMutualFriend(Z)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasNonMutualFriend:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$3202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1100
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->nonMutualFriend_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$3302(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1101
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1018
    if-nez p1, :cond_0

    .line 1019
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasProvider:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2402(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1022
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->provider_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2502(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/lang/String;)Ljava/lang/String;

    .line 1023
    return-object p0
.end method

.method public setSyncId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 997
    if-nez p1, :cond_0

    .line 998
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Z)Z

    .line 1001
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->syncId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2302(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;Ljava/lang/String;)Ljava/lang/String;

    .line 1002
    return-object p0
.end method

.method public setUris(ILcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2100(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1128
    return-object p0
.end method

.method public setUris(ILcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    .prologue
    .line 1120
    if-nez p2, :cond_0

    .line 1121
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->uris_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;->access$2100(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$Friend;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1124
    return-object p0
.end method
