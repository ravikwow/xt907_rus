.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4323
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$14200(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4318
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14300()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 1

    .prologue
    .line 4318
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4369
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4370
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4373
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 3

    .prologue
    .line 4326
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;-><init>()V

    .line 4327
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    .line 4328
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1

    .prologue
    .line 4361
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4362
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4364
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 3

    .prologue
    .line 4377
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    if-nez v1, :cond_0

    .line 4378
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4381
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    .line 4382
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    .line 4383
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 2

    .prologue
    .line 4336
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    if-nez v0, :cond_0

    .line 4337
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4340
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    .line 4341
    return-object p0
.end method

.method public clearData()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 2

    .prologue
    .line 4403
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$14502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z

    .line 4404
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->getData()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->data_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$14602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Ljava/lang/String;)Ljava/lang/String;

    .line 4405
    return-object p0
.end method

.method public clearModifySetFieldsOnly()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4463
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasModifySetFieldsOnly:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$15102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z

    .line 4464
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->modifySetFieldsOnly_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$15202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z

    .line 4465
    return-object p0
.end method

.method public clearSyncAnchor()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 2

    .prologue
    .line 4445
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$14902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z

    .line 4446
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->getSyncAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$15002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Ljava/lang/String;)Ljava/lang/String;

    .line 4447
    return-object p0
.end method

.method public clearSyncId()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 2

    .prologue
    .line 4424
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$14702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z

    .line 4425
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->getSyncId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->syncId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$14802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Ljava/lang/String;)Ljava/lang/String;

    .line 4426
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 2

    .prologue
    .line 4345
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

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
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4392
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1

    .prologue
    .line 4354
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4350
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getModifySetFieldsOnly()Z
    .locals 1

    .prologue
    .line 4455
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->getModifySetFieldsOnly()Z

    move-result v0

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4434
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->getSyncAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4413
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->getSyncId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 4389
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasModifySetFieldsOnly()Z
    .locals 1

    .prologue
    .line 4452
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasModifySetFieldsOnly()Z

    move-result v0

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 4431
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasSyncAnchor()Z

    move-result v0

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 4410
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasSyncId()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;
    .locals 1

    .prologue
    .line 4332
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4358
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4395
    if-nez p1, :cond_0

    .line 4396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4398
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$14502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z

    .line 4399
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->data_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$14602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Ljava/lang/String;)Ljava/lang/String;

    .line 4400
    return-object p0
.end method

.method public setModifySetFieldsOnly(Z)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 4458
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasModifySetFieldsOnly:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$15102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z

    .line 4459
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->modifySetFieldsOnly_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$15202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z

    .line 4460
    return-object p0
.end method

.method public setSyncAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4437
    if-nez p1, :cond_0

    .line 4438
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4440
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$14902(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z

    .line 4441
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$15002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Ljava/lang/String;)Ljava/lang/String;

    .line 4442
    return-object p0
.end method

.method public setSyncId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4416
    if-nez p1, :cond_0

    .line 4417
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4419
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$14702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Z)Z

    .line 4420
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->syncId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;->access$14802(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$GroupFixup;Ljava/lang/String;)Ljava/lang/String;

    .line 4421
    return-object p0
.end method
