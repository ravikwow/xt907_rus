.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1289
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3100(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1284
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 1

    .prologue
    .line 1284
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1335
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1339
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 3

    .prologue
    .line 1292
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;-><init>()V

    .line 1293
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    .line 1294
    return-object v0
.end method


# virtual methods
.method public addAdds(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1401
    return-object p0
.end method

.method public addAdds(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    .prologue
    .line 1387
    if-nez p1, :cond_0

    .line 1388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1390
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1391
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1393
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1394
    return-object p0
.end method

.method public addAllAdds(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 1405
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1409
    return-object p0
.end method

.method public addAllDeletes(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 1507
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1511
    return-object p0
.end method

.method public addAllMods(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;",
            ">;)",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;"
        }
    .end annotation

    .prologue
    .line 1456
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1460
    return-object p0
.end method

.method public addDeletes(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    return-object p0
.end method

.method public addDeletes(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    .prologue
    .line 1489
    if-nez p1, :cond_0

    .line 1490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1493
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1495
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1496
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1452
    return-object p0
.end method

.method public addMods(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    .prologue
    .line 1438
    if-nez p1, :cond_0

    .line 1439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1442
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1444
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1445
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1330
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    .locals 3

    .prologue
    .line 1343
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    if-nez v1, :cond_0

    .line 1344
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1347
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1348
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1351
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 1352
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1355
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_3

    .line 1356
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1359
    :cond_3
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    .line 1360
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    .line 1361
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    if-nez v0, :cond_0

    .line 1303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1306
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    .line 1307
    return-object p0
.end method

.method public clearAdds()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1413
    return-object p0
.end method

.method public clearDeletes()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1515
    return-object p0
.end method

.method public clearMods()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;Ljava/util/List;)Ljava/util/List;

    .line 1464
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2

    .prologue
    .line 1311
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

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
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdds(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->getAdds(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v0

    return-object v0
.end method

.method public getAddsCount()I
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->getAddsCount()I

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
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    .locals 1

    .prologue
    .line 1320
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method public getDeletes(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->getDeletes(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v0

    return-object v0
.end method

.method public getDeletesCount()I
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->getDeletesCount()I

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
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1316
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMods(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->getMods(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v0

    return-object v0
.end method

.method public getModsCount()I
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->getModsCount()I

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
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1384
    return-object p0
.end method

.method public setAdds(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    .prologue
    .line 1376
    if-nez p2, :cond_0

    .line 1377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->adds_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3400(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1380
    return-object p0
.end method

.method public setDeletes(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1486
    return-object p0
.end method

.method public setDeletes(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    .prologue
    .line 1478
    if-nez p2, :cond_0

    .line 1479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->deletes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3600(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1482
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1435
    return-object p0
.end method

.method public setMods(ILcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    .prologue
    .line 1427
    if-nez p2, :cond_0

    .line 1428
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1430
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;

    # getter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->mods_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;->access$3500(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixupChanges;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1431
    return-object p0
.end method
