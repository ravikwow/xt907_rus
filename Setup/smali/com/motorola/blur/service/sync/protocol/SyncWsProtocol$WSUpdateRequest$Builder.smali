.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2300(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    .locals 1

    .prologue
    .line 769
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 824
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    .locals 3

    .prologue
    .line 777
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;-><init>()V

    .line 778
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    .line 779
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 815
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 3

    .prologue
    .line 828
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    if-nez v1, :cond_0

    .line 829
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    .line 833
    .local v0, "returnMe":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    .line 834
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    if-nez v0, :cond_0

    .line 788
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    .line 792
    return-object p0
.end method

.method public clearOptionalData()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->hasOptionalData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->access$2602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;Z)Z

    .line 855
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->getOptionalData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->optionalData_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->access$2702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 856
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    .locals 2

    .prologue
    .line 796
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

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
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1

    .prologue
    .line 805
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 801
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOptionalData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->getOptionalData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasOptionalData()Z
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->hasOptionalData()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setOptionalData(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 846
    if-nez p1, :cond_0

    .line 847
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->hasOptionalData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->access$2602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;Z)Z

    .line 850
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->optionalData_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;->access$2702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 851
    return-object p0
.end method
