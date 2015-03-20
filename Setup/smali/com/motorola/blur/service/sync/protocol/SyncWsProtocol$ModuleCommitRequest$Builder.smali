.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2732
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11500(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2727
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11600()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    .locals 1

    .prologue
    .line 2727
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2778
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2779
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2782
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    .locals 3

    .prologue
    .line 2735
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;-><init>()V

    .line 2736
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    .line 2737
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2771
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2773
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 3

    .prologue
    .line 2786
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    if-nez v1, :cond_0

    .line 2787
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2790
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    .line 2791
    .local v0, "returnMe":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    .line 2792
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    .locals 2

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    if-nez v0, :cond_0

    .line 2746
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2749
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    .line 2750
    return-object p0
.end method

.method public clearAppData()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    .locals 2

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->hasAppData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->access$11802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;Z)Z

    .line 2813
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->getAppData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->appData_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->access$11902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2814
    return-object p0
.end method

.method public clearIsFullSyncForRecovery()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2830
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->hasIsFullSyncForRecovery:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->access$12002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;Z)Z

    .line 2831
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->isFullSyncForRecovery_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->access$12102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;Z)Z

    .line 2832
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    .locals 2

    .prologue
    .line 2754
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

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
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->getAppData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1

    .prologue
    .line 2763
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2759
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIsFullSyncForRecovery()Z
    .locals 1

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->getIsFullSyncForRecovery()Z

    move-result v0

    return v0
.end method

.method public hasAppData()Z
    .locals 1

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->hasAppData()Z

    move-result v0

    return v0
.end method

.method public hasIsFullSyncForRecovery()Z
    .locals 1

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->hasIsFullSyncForRecovery()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2727
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;
    .locals 1

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2767
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAppData(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2804
    if-nez p1, :cond_0

    .line 2805
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2807
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->hasAppData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->access$11802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;Z)Z

    .line 2808
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->appData_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->access$11902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2809
    return-object p0
.end method

.method public setIsFullSyncForRecovery(Z)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->hasIsFullSyncForRecovery:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->access$12002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;Z)Z

    .line 2826
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->isFullSyncForRecovery_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;->access$12102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$ModuleCommitRequest;Z)Z

    .line 2827
    return-object p0
.end method
