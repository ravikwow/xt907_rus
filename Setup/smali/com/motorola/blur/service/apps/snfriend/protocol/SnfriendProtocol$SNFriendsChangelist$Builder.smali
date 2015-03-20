.class public final Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnfriendProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    .locals 3

    .prologue
    .line 197
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;-><init>()V

    .line 198
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;-><init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    .line 199
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    .line 253
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    .line 254
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;-><init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    .line 212
    return-object p0
.end method

.method public clearFriends()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->hasFriends:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->access$502(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;Z)Z

    .line 291
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->friends_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->access$602(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    .line 292
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

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
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFriends()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->getFriends()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    return-object v0
.end method

.method public hasFriends()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->hasFriends()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFriends(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->hasFriends()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->friends_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->access$600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    # getter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->friends_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->access$600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;->newBuilder(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->friends_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->access$602(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    .line 286
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->hasFriends:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->access$502(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;Z)Z

    .line 287
    return-object p0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->friends_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->access$602(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    goto :goto_0
.end method

.method public setFriends(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->hasFriends:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->access$502(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;Z)Z

    .line 275
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->friends_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->access$602(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    .line 276
    return-object p0
.end method

.method public setFriends(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->hasFriends:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->access$502(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;Z)Z

    .line 270
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->friends_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;->access$602(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$SNFriendsChangelist;Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendsChanges;

    .line 271
    return-object p0
.end method
