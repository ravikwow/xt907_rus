.class public final Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "EmailProvidersProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1402
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4900(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1397
    invoke-direct {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->buildParsed()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 1

    .prologue
    .line 1397
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->create()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1448
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1452
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->buildPartial()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 3

    .prologue
    .line 1405
    new-instance v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;-><init>()V

    .line 1406
    .local v0, "builder":Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;-><init>(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    .line 1407
    return-object v0
.end method


# virtual methods
.method public addAllServers(Ljava/lang/Iterable;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;",
            ">;)",
            "Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 1565
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5202(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Ljava/util/List;)Ljava/util/List;

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1569
    return-object p0
.end method

.method public addServers(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5202(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Ljava/util/List;)Ljava/util/List;

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->build()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1561
    return-object p0
.end method

.method public addServers(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;

    .prologue
    .line 1547
    if-nez p1, :cond_0

    .line 1548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1550
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1551
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5202(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Ljava/util/List;)Ljava/util/List;

    .line 1553
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1554
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->build()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->build()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1443
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->buildPartial()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->buildPartial()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->buildPartial()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;
    .locals 3

    .prologue
    .line 1456
    iget-object v1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    if-nez v1, :cond_0

    .line 1457
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1460
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 1461
    iget-object v1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    iget-object v2, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5202(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Ljava/util/List;)Ljava/util/List;

    .line 1464
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    .line 1465
    .local v0, "returnMe":Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    .line 1466
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->clear()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->clear()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->clear()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    if-nez v0, :cond_0

    .line 1416
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1419
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;-><init>(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    .line 1420
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 2

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5502(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Z)Z

    .line 1521
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;->getDefaultInstance()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->error_:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5602(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    .line 1522
    return-object p0
.end method

.method public clearServers()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 2

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5202(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Ljava/util/List;)Ljava/util/List;

    .line 1573
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1483
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5302(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Z)Z

    .line 1484
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5402(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;I)I

    .line 1485
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->clone()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->clone()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->clone()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->clone()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->clone()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 2

    .prologue
    .line 1424
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->create()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;

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
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->clone()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;
    .locals 1

    .prologue
    .line 1433
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->getDefaultInstance()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1429
    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->getError()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getServers(I)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->getServers(I)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServersCount()I
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->getServersCount()I

    move-result v0

    return v0
.end method

.method public getServersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeError(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->error_:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5600(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;->getDefaultInstance()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1511
    iget-object v1, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->error_:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5600(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;->newBuilder(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$Builder;->buildPartial()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->error_:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5602(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    .line 1516
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5502(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Z)Z

    .line 1517
    return-object p0

    .line 1514
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->error_:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5602(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$Builder;

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5502(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Z)Z

    .line 1505
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error$Builder;->build()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->error_:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5602(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    .line 1506
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    .prologue
    .line 1496
    if-nez p1, :cond_0

    .line 1497
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5502(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Z)Z

    .line 1500
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->error_:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5602(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Error;

    .line 1501
    return-object p0
.end method

.method public setServers(ILcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo$Builder;->build()Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1544
    return-object p0
.end method

.method public setServers(ILcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$ServerInfo;

    .prologue
    .line 1536
    if-nez p2, :cond_0

    .line 1537
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1539
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # getter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->servers_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5200(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1540
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5302(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;Z)Z

    .line 1479
    iget-object v0, p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse$Builder;->result:Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;

    # setter for: Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;->access$5402(Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;I)I

    .line 1480
    return-object p0
.end method
