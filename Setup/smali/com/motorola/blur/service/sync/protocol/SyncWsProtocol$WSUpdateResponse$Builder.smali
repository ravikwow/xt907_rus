.class public final Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SyncWsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1050
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3000(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1045
    invoke-direct {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 1

    .prologue
    .line 1045
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1100
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 3

    .prologue
    .line 1053
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;-><init>()V

    .line 1054
    .local v0, "builder":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    .line 1055
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1091
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 3

    .prologue
    .line 1104
    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    if-nez v1, :cond_0

    .line 1105
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    .line 1109
    .local v0, "returnMe":Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    .line 1110
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    if-nez v0, :cond_0

    .line 1064
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1067
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;-><init>(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    .line 1068
    return-object p0
.end method

.method public clearAppData()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasAppData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1233
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getAppData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->appData_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1234
    return-object p0
.end method

.method public clearChangesSinceAnchor()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasChangesSinceAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$3902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1191
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getChangesSinceAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->changesSinceAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1192
    return-object p0
.end method

.method public clearCurrentServerAnchor()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasCurrentServerAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1212
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getCurrentServerAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->currentServerAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1213
    return-object p0
.end method

.method public clearDataFormat()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasDataFormat:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$5102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1311
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getDataFormat()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->dataFormat_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$5202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1312
    return-object p0
.end method

.method public clearExtendedStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasExtendedStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$3702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1170
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getExtendedStatus()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->extendedStatus_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$3802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1171
    return-object p0
.end method

.method public clearIsMore()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1250
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasIsMore:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1251
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->isMore_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1252
    return-object p0
.end method

.method public clearMessageType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasMessageType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1290
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getMessageType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->messageType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$5002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1291
    return-object p0
.end method

.method public clearMessageVersion()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1127
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasMessageVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$3302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1128
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->messageVersion_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$3402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;I)I

    .line 1129
    return-object p0
.end method

.method public clearStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$3502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1149
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    sget-object v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->OK:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$3602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 1150
    return-object p0
.end method

.method public clearSyncAppId()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1268
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasSyncAppId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1269
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->syncAppId_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;I)I

    .line 1270
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2

    .prologue
    .line 1072
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->create()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

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
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->clone()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getAppData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getChangesSinceAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getChangesSinceAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentServerAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getCurrentServerAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getDataFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1

    .prologue
    .line 1081
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getDefaultInstance()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1077
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getExtendedStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsMore()Z
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getIsMore()Z

    move-result v0

    return v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getMessageType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageVersion()I
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getMessageVersion()I

    move-result v0

    return v0
.end method

.method public getStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getStatus()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAppId()I
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->getSyncAppId()I

    move-result v0

    return v0
.end method

.method public hasAppData()Z
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasAppData()Z

    move-result v0

    return v0
.end method

.method public hasChangesSinceAnchor()Z
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasChangesSinceAnchor()Z

    move-result v0

    return v0
.end method

.method public hasCurrentServerAnchor()Z
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasCurrentServerAnchor()Z

    move-result v0

    return v0
.end method

.method public hasDataFormat()Z
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasDataFormat()Z

    move-result v0

    return v0
.end method

.method public hasExtendedStatus()Z
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasExtendedStatus()Z

    move-result v0

    return v0
.end method

.method public hasIsMore()Z
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasIsMore()Z

    move-result v0

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasMessageType()Z

    move-result v0

    return v0
.end method

.method public hasMessageVersion()Z
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasMessageVersion()Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasStatus()Z

    move-result v0

    return v0
.end method

.method public hasSyncAppId()Z
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasSyncAppId()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAppData(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1224
    if-nez p1, :cond_0

    .line 1225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasAppData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1228
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->appData_:Lcom/google/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1229
    return-object p0
.end method

.method public setChangesSinceAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1182
    if-nez p1, :cond_0

    .line 1183
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1185
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasChangesSinceAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$3902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1186
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->changesSinceAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1187
    return-object p0
.end method

.method public setCurrentServerAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1203
    if-nez p1, :cond_0

    .line 1204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasCurrentServerAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1207
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->currentServerAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1208
    return-object p0
.end method

.method public setDataFormat(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1302
    if-nez p1, :cond_0

    .line 1303
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasDataFormat:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$5102(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1306
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->dataFormat_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$5202(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1307
    return-object p0
.end method

.method public setExtendedStatus(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1161
    if-nez p1, :cond_0

    .line 1162
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasExtendedStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$3702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1165
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->extendedStatus_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$3802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1166
    return-object p0
.end method

.method public setIsMore(Z)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasIsMore:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1246
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->isMore_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1247
    return-object p0
.end method

.method public setMessageType(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1281
    if-nez p1, :cond_0

    .line 1282
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasMessageType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4902(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1285
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->messageType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$5002(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 1286
    return-object p0
.end method

.method public setMessageVersion(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasMessageVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$3302(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1123
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->messageVersion_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$3402(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;I)I

    .line 1124
    return-object p0
.end method

.method public setStatus(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .prologue
    .line 1140
    if-nez p1, :cond_0

    .line 1141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$3502(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1144
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->status_:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$3602(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 1145
    return-object p0
.end method

.method public setSyncAppId(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->hasSyncAppId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4702(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;Z)Z

    .line 1264
    iget-object v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse$Builder;->result:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;

    # setter for: Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->syncAppId_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;->access$4802(Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$WSUpdateResponse;I)I

    .line 1265
    return-object p0
.end method
