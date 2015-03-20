.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3566
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$15000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3561
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15100()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    .locals 1

    .prologue
    .line 3561
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3612
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3613
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3616
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    .locals 3

    .prologue
    .line 3569
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;-><init>()V

    .line 3570
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    new-instance v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .line 3571
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1

    .prologue
    .line 3604
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3605
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3607
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 3

    .prologue
    .line 3620
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    if-nez v1, :cond_0

    .line 3621
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3624
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .line 3625
    .local v0, "returnMe":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .line 3626
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    .locals 2

    .prologue
    .line 3579
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    if-nez v0, :cond_0

    .line 3580
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3583
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    .line 3584
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    .locals 2

    .prologue
    .line 3646
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->access$15302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;Z)Z

    .line 3647
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->access$15402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;Ljava/lang/String;)Ljava/lang/String;

    .line 3648
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    .locals 2

    .prologue
    .line 3588
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

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
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1

    .prologue
    .line 3597
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3593
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 3632
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->hasName()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3561
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;
    .locals 1

    .prologue
    .line 3575
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3601
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3638
    if-nez p1, :cond_0

    .line 3639
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3641
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->access$15302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;Z)Z

    .line 3642
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;->access$15402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncChannel;Ljava/lang/String;)Ljava/lang/String;

    .line 3643
    return-object p0
.end method
