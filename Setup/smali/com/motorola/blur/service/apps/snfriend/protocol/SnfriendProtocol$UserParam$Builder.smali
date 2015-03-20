.class public final Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnfriendProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1513
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4300(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1508
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .locals 1

    .prologue
    .line 1508
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1563
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .locals 3

    .prologue
    .line 1516
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;-><init>()V

    .line 1517
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;-><init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    .line 1518
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1554
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 3

    .prologue
    .line 1567
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    if-nez v1, :cond_0

    .line 1568
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    .line 1572
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    .line 1573
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .locals 2

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    if-nez v0, :cond_0

    .line 1527
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1530
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;-><init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    .line 1531
    return-object p0
.end method

.method public clearKey()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .locals 2

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasKey:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->access$4802(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Z)Z

    .line 1612
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->getKey()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->key_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->access$4902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Ljava/lang/String;)Ljava/lang/String;

    .line 1613
    return-object p0
.end method

.method public clearValue()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .locals 2

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasValue:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->access$5002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Z)Z

    .line 1633
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->getValue()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->value_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->access$5102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Ljava/lang/String;)Ljava/lang/String;

    .line 1634
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1590
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->access$4602(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Z)Z

    .line 1591
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->access$4702(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;I)I

    .line 1592
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .locals 2

    .prologue
    .line 1535
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

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
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1

    .prologue
    .line 1544
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1540
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasKey()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasValue()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1603
    if-nez p1, :cond_0

    .line 1604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasKey:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->access$4802(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Z)Z

    .line 1607
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->key_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->access$4902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Ljava/lang/String;)Ljava/lang/String;

    .line 1608
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1624
    if-nez p1, :cond_0

    .line 1625
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1627
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasValue:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->access$5002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Z)Z

    .line 1628
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->value_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->access$5102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Ljava/lang/String;)Ljava/lang/String;

    .line 1629
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->access$4602(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;Z)Z

    .line 1586
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;->access$4702(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$UserParam;I)I

    .line 1587
    return-object p0
.end method
