.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1256
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1251
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1306
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 3

    .prologue
    .line 1259
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;-><init>()V

    .line 1260
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    .line 1261
    return-object v0
.end method


# virtual methods
.method public addAllMoodAnchors(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;",
            ">;)",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;"
        }
    .end annotation

    .prologue
    .line 1419
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1422
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1423
    return-object p0
.end method

.method public addAllStatusAnchors(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;",
            ">;)",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;"
        }
    .end annotation

    .prologue
    .line 1368
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1372
    return-object p0
.end method

.method public addMoodAnchors(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1415
    return-object p0
.end method

.method public addMoodAnchors(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    .prologue
    .line 1401
    if-nez p1, :cond_0

    .line 1402
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1405
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1407
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    return-object p0
.end method

.method public addStatusAnchors(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1364
    return-object p0
.end method

.method public addStatusAnchors(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    .prologue
    .line 1350
    if-nez p1, :cond_0

    .line 1351
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1353
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1356
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1297
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 3

    .prologue
    .line 1310
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    if-nez v1, :cond_0

    .line 1311
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1314
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1315
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1318
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 1319
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1322
    :cond_2
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    .line 1323
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    .line 1324
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 2

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    if-nez v0, :cond_0

    .line 1270
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1273
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    .line 1274
    return-object p0
.end method

.method public clearMoodAnchors()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 2

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1427
    return-object p0
.end method

.method public clearStatusAnchors()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 2

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;Ljava/util/List;)Ljava/util/List;

    .line 1376
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 2

    .prologue
    .line 1278
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

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
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1

    .prologue
    .line 1287
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1283
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMoodAnchors(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->getMoodAnchors(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getMoodAnchorsCount()I
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->getMoodAnchorsCount()I

    move-result v0

    return v0
.end method

.method public getMoodAnchorsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatusAnchors(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->getStatusAnchors(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v0

    return-object v0
.end method

.method public getStatusAnchorsCount()I
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->getStatusAnchorsCount()I

    move-result v0

    return v0
.end method

.method public getStatusAnchorsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setMoodAnchors(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1398
    return-object p0
.end method

.method public setMoodAnchors(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    .prologue
    .line 1390
    if-nez p2, :cond_0

    .line 1391
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->moodAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1394
    return-object p0
.end method

.method public setStatusAnchors(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1347
    return-object p0
.end method

.method public setStatusAnchors(ILcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    .prologue
    .line 1339
    if-nez p2, :cond_0

    .line 1340
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->statusAnchors_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;->access$3000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1343
    return-object p0
.end method
