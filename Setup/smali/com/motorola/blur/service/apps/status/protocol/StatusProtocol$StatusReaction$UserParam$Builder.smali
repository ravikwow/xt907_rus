.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4564
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$18000(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4559
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18100()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    .locals 1

    .prologue
    .line 4559
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4610
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4611
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4614
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    .locals 3

    .prologue
    .line 4567
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;-><init>()V

    .line 4568
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    .line 4569
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1

    .prologue
    .line 4602
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4603
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4605
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 3

    .prologue
    .line 4618
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    if-nez v1, :cond_0

    .line 4619
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4622
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    .line 4623
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    .line 4624
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    .locals 2

    .prologue
    .line 4577
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    if-nez v0, :cond_0

    .line 4578
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4581
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    .line 4582
    return-object p0
.end method

.method public clearKey()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    .locals 2

    .prologue
    .line 4644
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->hasKey:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->access$18302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;Z)Z

    .line 4645
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->getKey()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->key_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->access$18402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;Ljava/lang/String;)Ljava/lang/String;

    .line 4646
    return-object p0
.end method

.method public clearVal()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    .locals 2

    .prologue
    .line 4665
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->hasVal:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->access$18502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;Z)Z

    .line 4666
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->getVal()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->val_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->access$18602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;Ljava/lang/String;)Ljava/lang/String;

    .line 4667
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    .locals 2

    .prologue
    .line 4586
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

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
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1

    .prologue
    .line 4595
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4591
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4633
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4654
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->getVal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 4630
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->hasKey()Z

    move-result v0

    return v0
.end method

.method public hasVal()Z
    .locals 1

    .prologue
    .line 4651
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->hasVal()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;
    .locals 1

    .prologue
    .line 4573
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4599
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4636
    if-nez p1, :cond_0

    .line 4637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4639
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->hasKey:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->access$18302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;Z)Z

    .line 4640
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->key_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->access$18402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;Ljava/lang/String;)Ljava/lang/String;

    .line 4641
    return-object p0
.end method

.method public setVal(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4657
    if-nez p1, :cond_0

    .line 4658
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4660
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->hasVal:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->access$18502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;Z)Z

    .line 4661
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->val_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;->access$18602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;Ljava/lang/String;)Ljava/lang/String;

    .line 4662
    return-object p0
.end method
