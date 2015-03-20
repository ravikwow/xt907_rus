.class public final Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AdminFeedProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2503
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$8600(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2498
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8700()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 1

    .prologue
    .line 2498
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2549
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2550
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2553
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 3

    .prologue
    .line 2506
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;-><init>()V

    .line 2507
    .local v0, "builder":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;-><init>(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    .line 2508
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1

    .prologue
    .line 2541
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2542
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2544
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 3

    .prologue
    .line 2557
    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    if-nez v1, :cond_0

    .line 2558
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2561
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    .line 2562
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    .line 2563
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 2

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    if-nez v0, :cond_0

    .line 2517
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2520
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;-><init>(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    .line 2521
    return-object p0
.end method

.method public clearAdditionalOTAInformation()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 2

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasAdditionalOTAInformation:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9302(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Z)Z

    .line 2658
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->additionalOTAInformation_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9402(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    .line 2659
    return-object p0
.end method

.method public clearData()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 2

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9102(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Z)Z

    .line 2621
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->data_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9202(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2622
    return-object p0
.end method

.method public clearNotificationMessage()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 2

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$8902(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Z)Z

    .line 2600
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9002(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 2601
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 2

    .prologue
    .line 2525
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->create()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

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
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->clone()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalOTAInformation()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;
    .locals 1

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->getAdditionalOTAInformation()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1

    .prologue
    .line 2534
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2530
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationMessage()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    .locals 1

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->getNotificationMessage()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasAdditionalOTAInformation()Z
    .locals 1

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasAdditionalOTAInformation()Z

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasNotificationMessage()Z
    .locals 1

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasNotificationMessage()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;
    .locals 1

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAdditionalOTAInformation(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasAdditionalOTAInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->additionalOTAInformation_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9400(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2648
    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->additionalOTAInformation_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9400(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;->newBuilder(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->additionalOTAInformation_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9402(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    .line 2653
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasAdditionalOTAInformation:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9302(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Z)Z

    .line 2654
    return-object p0

    .line 2651
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->additionalOTAInformation_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9402(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    goto :goto_0
.end method

.method public mergeNotificationMessage(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasNotificationMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9000(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;->getDefaultInstance()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2590
    iget-object v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    # getter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9000(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;->newBuilder(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;->buildPartial()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9002(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 2595
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$8902(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Z)Z

    .line 2596
    return-object p0

    .line 2593
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9002(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    goto :goto_0
.end method

.method public setAdditionalOTAInformation(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation$Builder;

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasAdditionalOTAInformation:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9302(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Z)Z

    .line 2642
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->additionalOTAInformation_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9402(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    .line 2643
    return-object p0
.end method

.method public setAdditionalOTAInformation(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    .prologue
    .line 2633
    if-nez p1, :cond_0

    .line 2634
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2636
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasAdditionalOTAInformation:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9302(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Z)Z

    .line 2637
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->additionalOTAInformation_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9402(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$AdditionalOTAInformation;

    .line 2638
    return-object p0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2612
    if-nez p1, :cond_0

    .line 2613
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2615
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9102(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Z)Z

    .line 2616
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->data_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9202(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2617
    return-object p0
.end method

.method public setNotificationMessage(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$8902(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Z)Z

    .line 2584
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage$Builder;->build()Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9002(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 2585
    return-object p0
.end method

.method public setNotificationMessage(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .prologue
    .line 2575
    if-nez p1, :cond_0

    .line 2576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2578
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->hasNotificationMessage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$8902(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Z)Z

    .line 2579
    iget-object v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate$Builder;->result:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;

    # setter for: Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->notificationMessage_:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;->access$9002(Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$OTAUpdate;Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$NotificationMessage;

    .line 2580
    return-object p0
.end method
