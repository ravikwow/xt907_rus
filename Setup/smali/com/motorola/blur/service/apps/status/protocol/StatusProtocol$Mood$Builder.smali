.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2533
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$7200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2528
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 1

    .prologue
    .line 2528
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2579
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2580
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2583
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 3

    .prologue
    .line 2536
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;-><init>()V

    .line 2537
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .line 2538
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2572
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2574
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 3

    .prologue
    .line 2587
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    if-nez v1, :cond_0

    .line 2588
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2591
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .line 2592
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .line 2593
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    if-nez v0, :cond_0

    .line 2547
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2550
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .line 2551
    return-object p0
.end method

.method public clearAction()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasAction:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$7702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2635
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    sget-object v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;->CLEAR:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->action_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$7802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    .line 2636
    return-object p0
.end method

.method public clearDescription()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasDescription:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2731
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getDescription()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->description_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;

    .line 2732
    return-object p0
.end method

.method public clearFriendId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasFriendId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2674
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getFriendId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->friendId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;

    .line 2675
    return-object p0
.end method

.method public clearId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2709
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2710
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->id_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;I)I

    .line 2711
    return-object p0
.end method

.method public clearIsMe()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2790
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasIsMe:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$9302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2791
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->isMe_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$9402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2792
    return-object p0
.end method

.method public clearPictureName()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2

    .prologue
    .line 2751
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasPictureName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2752
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getPictureName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->pictureName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$9002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;

    .line 2753
    return-object p0
.end method

.method public clearPictureURL()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2

    .prologue
    .line 2772
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasPictureURL:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$9102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2773
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getPictureURL()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->pictureURL_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$9202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;

    .line 2774
    return-object p0
.end method

.method public clearProviderId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2652
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasProviderId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$7902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2653
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->providerId_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;I)I

    .line 2654
    return-object p0
.end method

.method public clearSyncAnchor()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$7502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2614
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getSyncAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$7602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;

    .line 2615
    return-object p0
.end method

.method public clearTimestamp()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 3

    .prologue
    .line 2691
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2692
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;J)J

    .line 2693
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2

    .prologue
    .line 2555
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

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
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;
    .locals 1

    .prologue
    .line 2623
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getAction()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1

    .prologue
    .line 2564
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2719
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2560
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getFriendId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getId()I

    move-result v0

    return v0
.end method

.method public getIsMe()Z
    .locals 1

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getIsMe()Z

    move-result v0

    return v0
.end method

.method public getPictureName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getPictureName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2761
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getPictureURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getProviderId()I

    move-result v0

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getSyncAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasAction()Z

    move-result v0

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasDescription()Z

    move-result v0

    return v0
.end method

.method public hasFriendId()Z
    .locals 1

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasFriendId()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasIsMe()Z
    .locals 1

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasIsMe()Z

    move-result v0

    return v0
.end method

.method public hasPictureName()Z
    .locals 1

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasPictureName()Z

    move-result v0

    return v0
.end method

.method public hasPictureURL()Z
    .locals 1

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasPictureURL()Z

    move-result v0

    return v0
.end method

.method public hasProviderId()Z
    .locals 1

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasProviderId()Z

    move-result v0

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasSyncAnchor()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2568
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAction(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    .prologue
    .line 2626
    if-nez p1, :cond_0

    .line 2627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2629
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasAction:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$7702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2630
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->action_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$7802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Action;

    .line 2631
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2722
    if-nez p1, :cond_0

    .line 2723
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2725
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasDescription:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2726
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->description_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;

    .line 2727
    return-object p0
.end method

.method public setFriendId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2665
    if-nez p1, :cond_0

    .line 2666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2668
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasFriendId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2669
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->friendId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;

    .line 2670
    return-object p0
.end method

.method public setId(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2704
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2705
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->id_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;I)I

    .line 2706
    return-object p0
.end method

.method public setIsMe(Z)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 2785
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasIsMe:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$9302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2786
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->isMe_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$9402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2787
    return-object p0
.end method

.method public setPictureName(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2743
    if-nez p1, :cond_0

    .line 2744
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2746
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasPictureName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2747
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->pictureName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$9002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;

    .line 2748
    return-object p0
.end method

.method public setPictureURL(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2764
    if-nez p1, :cond_0

    .line 2765
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2767
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasPictureURL:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$9102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2768
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->pictureURL_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$9202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;

    .line 2769
    return-object p0
.end method

.method public setProviderId(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasProviderId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$7902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2648
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->providerId_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;I)I

    .line 2649
    return-object p0
.end method

.method public setSyncAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2605
    if-nez p1, :cond_0

    .line 2606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2608
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$7502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2609
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$7602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Ljava/lang/String;)Ljava/lang/String;

    .line 2610
    return-object p0
.end method

.method public setTimestamp(J)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;Z)Z

    .line 2687
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->access$8402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;J)J

    .line 2688
    return-object p0
.end method
