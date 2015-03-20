.class public final Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncSampleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 830
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 3

    .prologue
    .line 783
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;-><init>()V

    .line 784
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;-><init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    .line 785
    return-object v0
.end method


# virtual methods
.method public addAllWidgetAccessories(Ljava/lang/Iterable;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;",
            ">;)",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;"
        }
    .end annotation

    .prologue
    .line 987
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Ljava/util/List;)Ljava/util/List;

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 991
    return-object p0
.end method

.method public addWidgetAccessories(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    .prologue
    .line 979
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Ljava/util/List;)Ljava/util/List;

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    return-object p0
.end method

.method public addWidgetAccessories(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    .prologue
    .line 969
    if-nez p1, :cond_0

    .line 970
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Ljava/util/List;)Ljava/util/List;

    .line 975
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 821
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;
    .locals 3

    .prologue
    .line 834
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    if-nez v1, :cond_0

    .line 835
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 838
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 839
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    iget-object v2, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Ljava/util/List;)Ljava/util/List;

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    .line 843
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    .line 844
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    if-nez v0, :cond_0

    .line 794
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;-><init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    .line 798
    return-object p0
.end method

.method public clearBarcode()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 3

    .prologue
    .line 942
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasBarcode:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2902(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Z)Z

    .line 943
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->barcode_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$3002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;J)J

    .line 944
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Z)Z

    .line 907
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Ljava/lang/String;)Ljava/lang/String;

    .line 908
    return-object p0
.end method

.method public clearSize()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 924
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasSize:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2702(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Z)Z

    .line 925
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->size_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;I)I

    .line 926
    return-object p0
.end method

.method public clearSyncAnchor()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2302(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Z)Z

    .line 886
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getSyncAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Ljava/lang/String;)Ljava/lang/String;

    .line 887
    return-object p0
.end method

.method public clearSyncId()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2102(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Z)Z

    .line 865
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getSyncId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->syncId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2202(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Ljava/lang/String;)Ljava/lang/String;

    .line 866
    return-object p0
.end method

.method public clearWidgetAccessories()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Ljava/util/List;)Ljava/util/List;

    .line 995
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2

    .prologue
    .line 802
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;

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
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBarcode()J
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getBarcode()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;
    .locals 1

    .prologue
    .line 811
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 807
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getSize()I

    move-result v0

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getSyncAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getSyncId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetAccessories(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 955
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getWidgetAccessories(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetAccessoriesCount()I
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->getWidgetAccessoriesCount()I

    move-result v0

    return v0
.end method

.method public getWidgetAccessoriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 949
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasBarcode()Z
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasBarcode()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasSize()Z
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasSize()Z

    move-result v0

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasSyncAnchor()Z

    move-result v0

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasSyncId()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setBarcode(J)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 937
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasBarcode:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2902(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Z)Z

    .line 938
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->barcode_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$3002(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;J)J

    .line 939
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 898
    if-nez p1, :cond_0

    .line 899
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Z)Z

    .line 902
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Ljava/lang/String;)Ljava/lang/String;

    .line 903
    return-object p0
.end method

.method public setSize(I)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 919
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasSize:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2702(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Z)Z

    .line 920
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->size_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;I)I

    .line 921
    return-object p0
.end method

.method public setSyncAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 877
    if-nez p1, :cond_0

    .line 878
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2302(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Z)Z

    .line 881
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2402(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Ljava/lang/String;)Ljava/lang/String;

    .line 882
    return-object p0
.end method

.method public setSyncId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 856
    if-nez p1, :cond_0

    .line 857
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2102(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Z)Z

    .line 860
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->syncId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2202(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;Ljava/lang/String;)Ljava/lang/String;

    .line 861
    return-object p0
.end method

.method public setWidgetAccessories(ILcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;

    .prologue
    .line 965
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 966
    return-object p0
.end method

.method public setWidgetAccessories(ILcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$WidgetAccessory;

    .prologue
    .line 958
    if-nez p2, :cond_0

    .line 959
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->widgetAccessories_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;->access$2000(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$Widget;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 962
    return-object p0
.end method
