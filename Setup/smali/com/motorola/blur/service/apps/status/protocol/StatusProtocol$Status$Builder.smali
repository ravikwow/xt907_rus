.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3107
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$9700(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3102
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9800()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 1

    .prologue
    .line 3102
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3153
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3154
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3157
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 3

    .prologue
    .line 3110
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;-><init>()V

    .line 3111
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .line 3112
    return-object v0
.end method


# virtual methods
.method public addAllOrigStatusMetaItem(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;",
            ">;)",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;"
        }
    .end annotation

    .prologue
    .line 3673
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3674
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3676
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3677
    return-object p0
.end method

.method public addAllRelatedId(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;",
            ">;)",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;"
        }
    .end annotation

    .prologue
    .line 3571
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3572
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3574
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3575
    return-object p0
.end method

.method public addAllStatusMetaItem(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;",
            ">;)",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;"
        }
    .end annotation

    .prologue
    .line 3622
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3623
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3625
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3626
    return-object p0
.end method

.method public addOrigStatusMetaItem(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    .prologue
    .line 3665
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3666
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3668
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->build()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3669
    return-object p0
.end method

.method public addOrigStatusMetaItem(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    .prologue
    .line 3655
    if-nez p1, :cond_0

    .line 3656
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3658
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3659
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3661
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3662
    return-object p0
.end method

.method public addRelatedId(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    .prologue
    .line 3563
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3564
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3566
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->build()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3567
    return-object p0
.end method

.method public addRelatedId(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    .prologue
    .line 3553
    if-nez p1, :cond_0

    .line 3554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3556
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3557
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3559
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3560
    return-object p0
.end method

.method public addStatusMetaItem(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    .prologue
    .line 3614
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3615
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3617
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->build()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3618
    return-object p0
.end method

.method public addStatusMetaItem(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    .prologue
    .line 3604
    if-nez p1, :cond_0

    .line 3605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3607
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3608
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3610
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3611
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1

    .prologue
    .line 3145
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3146
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3148
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 3

    .prologue
    .line 3161
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    if-nez v1, :cond_0

    .line 3162
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3165
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 3166
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3169
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 3170
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3173
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 3174
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3177
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .line 3178
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .line 3179
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    if-nez v0, :cond_0

    .line 3121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3124
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .line 3125
    return-object p0
.end method

.method public clearAccountId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasAccountId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3263
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getAccountId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->accountId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3264
    return-object p0
.end method

.method public clearAction()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3220
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasAction:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3221
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    sget-object v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;->CLEAR:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->action_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    .line 3222
    return-object p0
.end method

.method public clearDisabledReactions()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3442
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasDisabledReactions:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3443
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDisabledReactions()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->disabledReactions_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3444
    return-object p0
.end method

.method public clearExternalId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3283
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasExternalId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3284
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getExternalId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->externalId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3285
    return-object p0
.end method

.method public clearFriendId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3304
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasFriendId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3305
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getFriendId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->friendId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3306
    return-object p0
.end method

.method public clearIsMe()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3400
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasIsMe:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3401
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->isMe_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3402
    return-object p0
.end method

.method public clearMeFeedType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3526
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMeFeedType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3527
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->NEITHER:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->meFeedType_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    .line 3528
    return-object p0
.end method

.method public clearMediaId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3700
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMediaId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3701
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getMediaId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->mediaId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3702
    return-object p0
.end method

.method public clearMessage()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3361
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3362
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getMessage()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->message_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3363
    return-object p0
.end method

.method public clearOrigProfUrl()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3505
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigProfUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3506
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getOrigProfUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origProfUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3507
    return-object p0
.end method

.method public clearOrigPublisher()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3484
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisher:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3485
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getOrigPublisher()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisher_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3486
    return-object p0
.end method

.method public clearOrigPublisherId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3721
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3722
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getOrigPublisherId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$14002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3723
    return-object p0
.end method

.method public clearOrigPublisherPicUrl()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3763
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherPicUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$14302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3764
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getOrigPublisherPicUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherPicUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$14402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3765
    return-object p0
.end method

.method public clearOrigPublisherProfileUrl()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3742
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherProfileUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$14102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3743
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getOrigPublisherProfileUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherProfileUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$14202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3744
    return-object p0
.end method

.method public clearOrigStatus()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3463
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3464
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getOrigStatus()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatus_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3465
    return-object p0
.end method

.method public clearOrigStatusMetaItem()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3680
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3681
    return-object p0
.end method

.method public clearProvider()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3241
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProvider:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3242
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getProvider()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->provider_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3243
    return-object p0
.end method

.method public clearProviderId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3340
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProviderId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3341
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->providerId_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;I)I

    .line 3342
    return-object p0
.end method

.method public clearProviderParams()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3382
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProviderParams:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3383
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getProviderParams()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->providerParams_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3384
    return-object p0
.end method

.method public clearRelatedId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3578
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3579
    return-object p0
.end method

.method public clearStatusId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3421
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasStatusId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3422
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getStatusId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3423
    return-object p0
.end method

.method public clearStatusMetaItem()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3629
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/util/List;)Ljava/util/List;

    .line 3630
    return-object p0
.end method

.method public clearStatusPhotoURL()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasStatusPhotoURL:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$14502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3785
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getStatusPhotoURL()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusPhotoURL_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$14602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3786
    return-object p0
.end method

.method public clearSyncAnchor()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3200
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getSyncAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3201
    return-object p0
.end method

.method public clearTimestamp()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 3

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3323
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;J)J

    .line 3324
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2

    .prologue
    .line 3129
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

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
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3251
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;
    .locals 1

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getAction()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1

    .prologue
    .line 3138
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3134
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledReactions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3431
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDisabledReactions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getExternalId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3293
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getFriendId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsMe()Z
    .locals 1

    .prologue
    .line 3392
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getIsMe()Z

    move-result v0

    return v0
.end method

.method public getMeFeedType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;
    .locals 1

    .prologue
    .line 3515
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getMeFeedType()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    move-result-object v0

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getMediaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3350
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigProfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getOrigProfUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3473
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getOrigPublisher()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigPublisherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3710
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getOrigPublisherId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigPublisherPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3752
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getOrigPublisherPicUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigPublisherProfileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3731
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getOrigPublisherProfileUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3452
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getOrigStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigStatusMetaItem(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3641
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getOrigStatusMetaItem(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public getOrigStatusMetaItemCount()I
    .locals 1

    .prologue
    .line 3638
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getOrigStatusMetaItemCount()I

    move-result v0

    return v0
.end method

.method public getOrigStatusMetaItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3230
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getProviderId()I

    move-result v0

    return v0
.end method

.method public getProviderParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3371
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getProviderParams()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedId(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3539
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getRelatedId(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedIdCount()I
    .locals 1

    .prologue
    .line 3536
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getRelatedIdCount()I

    move-result v0

    return v0
.end method

.method public getRelatedIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3533
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatusId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3410
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getStatusId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusMetaItem(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3590
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getStatusMetaItem(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v0

    return-object v0
.end method

.method public getStatusMetaItemCount()I
    .locals 1

    .prologue
    .line 3587
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getStatusMetaItemCount()I

    move-result v0

    return v0
.end method

.method public getStatusMetaItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3584
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatusPhotoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3773
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getStatusPhotoURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3188
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getSyncAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 3314
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAccountId()Z
    .locals 1

    .prologue
    .line 3248
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasAccountId()Z

    move-result v0

    return v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 3206
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasAction()Z

    move-result v0

    return v0
.end method

.method public hasDisabledReactions()Z
    .locals 1

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasDisabledReactions()Z

    move-result v0

    return v0
.end method

.method public hasExternalId()Z
    .locals 1

    .prologue
    .line 3269
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasExternalId()Z

    move-result v0

    return v0
.end method

.method public hasFriendId()Z
    .locals 1

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasFriendId()Z

    move-result v0

    return v0
.end method

.method public hasIsMe()Z
    .locals 1

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasIsMe()Z

    move-result v0

    return v0
.end method

.method public hasMeFeedType()Z
    .locals 1

    .prologue
    .line 3512
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMeFeedType()Z

    move-result v0

    return v0
.end method

.method public hasMediaId()Z
    .locals 1

    .prologue
    .line 3686
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMediaId()Z

    move-result v0

    return v0
.end method

.method public hasMessage()Z
    .locals 1

    .prologue
    .line 3347
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMessage()Z

    move-result v0

    return v0
.end method

.method public hasOrigProfUrl()Z
    .locals 1

    .prologue
    .line 3491
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigProfUrl()Z

    move-result v0

    return v0
.end method

.method public hasOrigPublisher()Z
    .locals 1

    .prologue
    .line 3470
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisher()Z

    move-result v0

    return v0
.end method

.method public hasOrigPublisherId()Z
    .locals 1

    .prologue
    .line 3707
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherId()Z

    move-result v0

    return v0
.end method

.method public hasOrigPublisherPicUrl()Z
    .locals 1

    .prologue
    .line 3749
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherPicUrl()Z

    move-result v0

    return v0
.end method

.method public hasOrigPublisherProfileUrl()Z
    .locals 1

    .prologue
    .line 3728
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherProfileUrl()Z

    move-result v0

    return v0
.end method

.method public hasOrigStatus()Z
    .locals 1

    .prologue
    .line 3449
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigStatus()Z

    move-result v0

    return v0
.end method

.method public hasProvider()Z
    .locals 1

    .prologue
    .line 3227
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProvider()Z

    move-result v0

    return v0
.end method

.method public hasProviderId()Z
    .locals 1

    .prologue
    .line 3329
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProviderId()Z

    move-result v0

    return v0
.end method

.method public hasProviderParams()Z
    .locals 1

    .prologue
    .line 3368
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProviderParams()Z

    move-result v0

    return v0
.end method

.method public hasStatusId()Z
    .locals 1

    .prologue
    .line 3407
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasStatusId()Z

    move-result v0

    return v0
.end method

.method public hasStatusPhotoURL()Z
    .locals 1

    .prologue
    .line 3770
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasStatusPhotoURL()Z

    move-result v0

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 3185
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasSyncAnchor()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1

    .prologue
    .line 3116
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3142
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAccountId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3254
    if-nez p1, :cond_0

    .line 3255
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3257
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasAccountId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3258
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->accountId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3259
    return-object p0
.end method

.method public setAction(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    .prologue
    .line 3212
    if-nez p1, :cond_0

    .line 3213
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3215
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasAction:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3216
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->action_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    .line 3217
    return-object p0
.end method

.method public setDisabledReactions(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3434
    if-nez p1, :cond_0

    .line 3435
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3437
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasDisabledReactions:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3438
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->disabledReactions_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3439
    return-object p0
.end method

.method public setExternalId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3275
    if-nez p1, :cond_0

    .line 3276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3278
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasExternalId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3279
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->externalId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3280
    return-object p0
.end method

.method public setFriendId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3296
    if-nez p1, :cond_0

    .line 3297
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3299
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasFriendId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3300
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->friendId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3301
    return-object p0
.end method

.method public setIsMe(Z)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 3395
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasIsMe:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3396
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->isMe_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3397
    return-object p0
.end method

.method public setMeFeedType(Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    .prologue
    .line 3518
    if-nez p1, :cond_0

    .line 3519
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3521
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMeFeedType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3522
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->meFeedType_:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    .line 3523
    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3692
    if-nez p1, :cond_0

    .line 3693
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3695
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMediaId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3696
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->mediaId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3697
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3353
    if-nez p1, :cond_0

    .line 3354
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3356
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3357
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->message_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3358
    return-object p0
.end method

.method public setOrigProfUrl(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3497
    if-nez p1, :cond_0

    .line 3498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3500
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigProfUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3501
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origProfUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3502
    return-object p0
.end method

.method public setOrigPublisher(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3476
    if-nez p1, :cond_0

    .line 3477
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3479
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisher:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3480
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisher_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3481
    return-object p0
.end method

.method public setOrigPublisherId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3713
    if-nez p1, :cond_0

    .line 3714
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3716
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3717
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$14002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3718
    return-object p0
.end method

.method public setOrigPublisherPicUrl(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3755
    if-nez p1, :cond_0

    .line 3756
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3758
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherPicUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$14302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3759
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherPicUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$14402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3760
    return-object p0
.end method

.method public setOrigPublisherProfileUrl(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3734
    if-nez p1, :cond_0

    .line 3735
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3737
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigPublisherProfileUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$14102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3738
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origPublisherProfileUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$14202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3739
    return-object p0
.end method

.method public setOrigStatus(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3455
    if-nez p1, :cond_0

    .line 3456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3458
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasOrigStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3459
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatus_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$13002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3460
    return-object p0
.end method

.method public setOrigStatusMetaItem(ILcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    .prologue
    .line 3651
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->build()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3652
    return-object p0
.end method

.method public setOrigStatusMetaItem(ILcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    .prologue
    .line 3644
    if-nez p2, :cond_0

    .line 3645
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3647
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->origStatusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3648
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3233
    if-nez p1, :cond_0

    .line 3234
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3236
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProvider:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3237
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->provider_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3238
    return-object p0
.end method

.method public setProviderId(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3335
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProviderId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3336
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->providerId_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;I)I

    .line 3337
    return-object p0
.end method

.method public setProviderParams(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3374
    if-nez p1, :cond_0

    .line 3375
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3377
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasProviderParams:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3378
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->providerParams_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3379
    return-object p0
.end method

.method public setRelatedId(ILcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;

    .prologue
    .line 3549
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId$Builder;->build()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3550
    return-object p0
.end method

.method public setRelatedId(ILcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$RelatedId;

    .prologue
    .line 3542
    if-nez p2, :cond_0

    .line 3543
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3545
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->relatedId_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3546
    return-object p0
.end method

.method public setStatusId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3413
    if-nez p1, :cond_0

    .line 3414
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3416
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasStatusId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3417
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$12602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3418
    return-object p0
.end method

.method public setStatusMetaItem(ILcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;

    .prologue
    .line 3600
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$Builder;->build()Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3601
    return-object p0
.end method

.method public setStatusMetaItem(ILcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;

    .prologue
    .line 3593
    if-nez p2, :cond_0

    .line 3594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3596
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusMetaItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10100(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3597
    return-object p0
.end method

.method public setStatusPhotoURL(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3776
    if-nez p1, :cond_0

    .line 3777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3779
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasStatusPhotoURL:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$14502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3780
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->statusPhotoURL_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$14602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3781
    return-object p0
.end method

.method public setSyncAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3191
    if-nez p1, :cond_0

    .line 3192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3194
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3195
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$10402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Ljava/lang/String;)Ljava/lang/String;

    .line 3196
    return-object p0
.end method

.method public setTimestamp(J)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 3317
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;Z)Z

    .line 3318
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->access$11602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;J)J

    .line 3319
    return-object p0
.end method
