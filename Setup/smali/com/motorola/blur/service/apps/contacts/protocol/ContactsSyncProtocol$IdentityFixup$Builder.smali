.class public final Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ContactsSyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2051
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4700(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2046
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
    .locals 1

    .prologue
    .line 2046
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2097
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2101
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
    .locals 3

    .prologue
    .line 2054
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;-><init>()V

    .line 2055
    .local v0, "builder":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    .line 2056
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;
    .locals 1

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2092
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;
    .locals 3

    .prologue
    .line 2105
    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    if-nez v1, :cond_0

    .line 2106
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2109
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    .line 2110
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    .line 2111
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
    .locals 2

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    if-nez v0, :cond_0

    .line 2065
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2068
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;-><init>(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    .line 2069
    return-object p0
.end method

.method public clearData()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
    .locals 2

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Z)Z

    .line 2174
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->getData()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->data_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Ljava/lang/String;)Ljava/lang/String;

    .line 2175
    return-object p0
.end method

.method public clearModifySetFieldsOnly()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2191
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->hasModifySetFieldsOnly:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Z)Z

    .line 2192
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->modifySetFieldsOnly_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Z)Z

    .line 2193
    return-object p0
.end method

.method public clearSyncAnchor()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
    .locals 2

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Z)Z

    .line 2153
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->getSyncAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Ljava/lang/String;)Ljava/lang/String;

    .line 2154
    return-object p0
.end method

.method public clearSyncId()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
    .locals 2

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Z)Z

    .line 2132
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->getSyncId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->syncId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Ljava/lang/String;)Ljava/lang/String;

    .line 2133
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
    .locals 2

    .prologue
    .line 2073
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->create()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

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
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->clone()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;
    .locals 1

    .prologue
    .line 2082
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->getDefaultInstance()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2078
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getModifySetFieldsOnly()Z
    .locals 1

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->getModifySetFieldsOnly()Z

    move-result v0

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->getSyncAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->getSyncId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 2159
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasModifySetFieldsOnly()Z
    .locals 1

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->hasModifySetFieldsOnly()Z

    move-result v0

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->hasSyncAnchor()Z

    move-result v0

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->hasSyncId()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;
    .locals 1

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2165
    if-nez p1, :cond_0

    .line 2166
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2168
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5402(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Z)Z

    .line 2169
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->data_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5502(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Ljava/lang/String;)Ljava/lang/String;

    .line 2170
    return-object p0
.end method

.method public setModifySetFieldsOnly(Z)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->hasModifySetFieldsOnly:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5602(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Z)Z

    .line 2187
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->modifySetFieldsOnly_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5702(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Z)Z

    .line 2188
    return-object p0
.end method

.method public setSyncAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2144
    if-nez p1, :cond_0

    .line 2145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2147
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5202(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Z)Z

    .line 2148
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5302(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Ljava/lang/String;)Ljava/lang/String;

    .line 2149
    return-object p0
.end method

.method public setSyncId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2123
    if-nez p1, :cond_0

    .line 2124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2126
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5002(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Z)Z

    .line 2127
    iget-object v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup$Builder;->result:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;

    # setter for: Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->syncId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;->access$5102(Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$IdentityFixup;Ljava/lang/String;)Ljava/lang/String;

    .line 2128
    return-object p0
.end method
