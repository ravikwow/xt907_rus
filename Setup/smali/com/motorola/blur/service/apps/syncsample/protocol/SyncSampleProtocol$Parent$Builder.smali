.class public final Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncSampleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2446
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6700(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2441
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 1

    .prologue
    .line 2441
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2492
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2493
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2496
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 3

    .prologue
    .line 2449
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;-><init>()V

    .line 2450
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;-><init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    .line 2451
    return-object v0
.end method


# virtual methods
.method public addAllFieldChildren(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;"
        }
    .end annotation

    .prologue
    .line 2642
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2643
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Ljava/util/List;)Ljava/util/List;

    .line 2645
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2646
    return-object p0
.end method

.method public addFieldChildren(Ljava/lang/String;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2631
    if-nez p1, :cond_0

    .line 2632
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2634
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2635
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Ljava/util/List;)Ljava/util/List;

    .line 2637
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2638
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1

    .prologue
    .line 2484
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2485
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2487
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 3

    .prologue
    .line 2500
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    if-nez v1, :cond_0

    .line 2501
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2504
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 2505
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Ljava/util/List;)Ljava/util/List;

    .line 2508
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    .line 2509
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    .line 2510
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 2

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    if-nez v0, :cond_0

    .line 2460
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2463
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;-><init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    .line 2464
    return-object p0
.end method

.method public clearFieldBigint()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 3

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldBigint:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z

    .line 2567
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldBigint_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;J)J

    .line 2568
    return-object p0
.end method

.method public clearFieldBlob()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 2

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldBlob:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7902(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z

    .line 2609
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getFieldBlob()Lcom/google/protobuf/ByteString;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldBlob_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$8002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2610
    return-object p0
.end method

.method public clearFieldChildren()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 2

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Ljava/util/List;)Ljava/util/List;

    .line 2650
    return-object p0
.end method

.method public clearFieldInt()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2548
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldInt:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7302(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z

    .line 2549
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldInt_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;I)I

    .line 2550
    return-object p0
.end method

.method public clearFieldString()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 2

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldString:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7702(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z

    .line 2588
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getFieldString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldString_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Ljava/lang/String;)Ljava/lang/String;

    .line 2589
    return-object p0
.end method

.method public clearId()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 2

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7102(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z

    .line 2531
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->id_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7202(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Ljava/lang/String;)Ljava/lang/String;

    .line 2532
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 2

    .prologue
    .line 2468
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

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
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1

    .prologue
    .line 2477
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2473
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFieldBigint()J
    .locals 2

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getFieldBigint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldBlob()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2597
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getFieldBlob()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFieldChildren(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getFieldChildren(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldChildrenCount()I
    .locals 1

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getFieldChildrenCount()I

    move-result v0

    return v0
.end method

.method public getFieldChildrenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldInt()I
    .locals 1

    .prologue
    .line 2540
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getFieldInt()I

    move-result v0

    return v0
.end method

.method public getFieldString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2576
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getFieldString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFieldBigint()Z
    .locals 1

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldBigint()Z

    move-result v0

    return v0
.end method

.method public hasFieldBlob()Z
    .locals 1

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldBlob()Z

    move-result v0

    return v0
.end method

.method public hasFieldInt()Z
    .locals 1

    .prologue
    .line 2537
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldInt()Z

    move-result v0

    return v0
.end method

.method public hasFieldString()Z
    .locals 1

    .prologue
    .line 2573
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldString()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasId()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2441
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;
    .locals 1

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setFieldBigint(J)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 2561
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldBigint:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z

    .line 2562
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldBigint_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;J)J

    .line 2563
    return-object p0
.end method

.method public setFieldBlob(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2600
    if-nez p1, :cond_0

    .line 2601
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2603
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldBlob:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7902(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z

    .line 2604
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldBlob_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$8002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2605
    return-object p0
.end method

.method public setFieldChildren(ILjava/lang/String;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2624
    if-nez p2, :cond_0

    .line 2625
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2627
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldChildren_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2628
    return-object p0
.end method

.method public setFieldInt(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldInt:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7302(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z

    .line 2544
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldInt_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;I)I

    .line 2545
    return-object p0
.end method

.method public setFieldString(Ljava/lang/String;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2579
    if-nez p1, :cond_0

    .line 2580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2582
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasFieldString:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7702(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z

    .line 2583
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->fieldString_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Ljava/lang/String;)Ljava/lang/String;

    .line 2584
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2522
    if-nez p1, :cond_0

    .line 2523
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2525
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->hasId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7102(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Z)Z

    .line 2526
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->id_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;->access$7202(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Parent;Ljava/lang/String;)Ljava/lang/String;

    .line 2527
    return-object p0
.end method
