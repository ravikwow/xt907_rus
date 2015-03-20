.class public final Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncSampleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1371
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4200(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1366
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 1

    .prologue
    .line 1366
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1417
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1421
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 3

    .prologue
    .line 1374
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;-><init>()V

    .line 1375
    .local v0, "builder":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;-><init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    .line 1376
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1412
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 3

    .prologue
    .line 1425
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    if-nez v1, :cond_0

    .line 1426
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    .line 1430
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    .line 1431
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 2

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    if-nez v0, :cond_0

    .line 1385
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1388
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;-><init>(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    .line 1389
    return-object p0
.end method

.method public clearChildChanges()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 2

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasChildChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4702(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Z)Z

    .line 1505
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->childChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    .line 1506
    return-object p0
.end method

.method public clearParentChanges()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 2

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasParentChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Z)Z

    .line 1468
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->parentChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .line 1469
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 2

    .prologue
    .line 1393
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->create()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

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
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->clone()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChildChanges()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->getChildChanges()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1

    .prologue
    .line 1402
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1398
    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getParentChanges()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->getParentChanges()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    return-object v0
.end method

.method public hasChildChanges()Z
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasChildChanges()Z

    move-result v0

    return v0
.end method

.method public hasParentChanges()Z
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasParentChanges()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeChildChanges(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasChildChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->childChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4800(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1495
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->childChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4800(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;->newBuilder(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->childChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    .line 1500
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasChildChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4702(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Z)Z

    .line 1501
    return-object p0

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->childChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    goto :goto_0
.end method

.method public mergeParentChanges(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasParentChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->parentChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1458
    iget-object v1, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    # getter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->parentChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4600(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;->newBuilder(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->parentChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .line 1463
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasParentChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Z)Z

    .line 1464
    return-object p0

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->parentChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    goto :goto_0
.end method

.method public setChildChanges(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasChildChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4702(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Z)Z

    .line 1489
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->childChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    .line 1490
    return-object p0
.end method

.method public setChildChanges(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    .prologue
    .line 1480
    if-nez p1, :cond_0

    .line 1481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasChildChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4702(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Z)Z

    .line 1484
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->childChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4802(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ChildChanges;

    .line 1485
    return-object p0
.end method

.method public setParentChanges(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasParentChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Z)Z

    .line 1452
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges$Builder;->build()Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->parentChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .line 1453
    return-object p0
.end method

.method public setParentChanges(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .prologue
    .line 1443
    if-nez p1, :cond_0

    .line 1444
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->hasParentChanges:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4502(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Z)Z

    .line 1447
    iget-object v0, p0, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist$Builder;->result:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;

    # setter for: Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->parentChanges_:Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;->access$4602(Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$SRM2Changelist;Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;)Lcom/motorola/blur/service/apps/syncsample/protocol/SyncSampleProtocol$ParentChanges;

    .line 1448
    return-object p0
.end method
