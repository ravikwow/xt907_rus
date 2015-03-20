.class public final Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnfriendProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2171
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6600(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2166
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    .locals 1

    .prologue
    .line 2166
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2217
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2218
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2221
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    .locals 3

    .prologue
    .line 2174
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;-><init>()V

    .line 2175
    .local v0, "builder":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;-><init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    .line 2176
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2210
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2212
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 3

    .prologue
    .line 2225
    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    if-nez v1, :cond_0

    .line 2226
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2229
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    .line 2230
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    .line 2231
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    .locals 2

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    if-nez v0, :cond_0

    .line 2185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2188
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;-><init>(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    .line 2189
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    .locals 2

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->access$6902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;Z)Z

    .line 2252
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    sget-object v1, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;->APPLICATION_URI:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->type_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->access$7002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;

    .line 2253
    return-object p0
.end method

.method public clearUri()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    .locals 2

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->hasUri:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->access$7102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;Z)Z

    .line 2273
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->getUri()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->uri_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->access$7202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;Ljava/lang/String;)Ljava/lang/String;

    .line 2274
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    .locals 2

    .prologue
    .line 2193
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->create()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

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
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->clone()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1

    .prologue
    .line 2202
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->getDefaultInstance()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2198
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;
    .locals 1

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->getType()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasUri()Z
    .locals 1

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->hasUri()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2166
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;
    .locals 1

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setType(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;

    .prologue
    .line 2243
    if-nez p1, :cond_0

    .line 2244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2246
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->access$6902(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;Z)Z

    .line 2247
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->type_:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->access$7002(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Type;

    .line 2248
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2264
    if-nez p1, :cond_0

    .line 2265
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2267
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->hasUri:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->access$7102(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;Z)Z

    .line 2268
    iget-object v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri$Builder;->result:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;

    # setter for: Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->uri_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;->access$7202(Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$ProfileUri;Ljava/lang/String;)Ljava/lang/String;

    .line 2269
    return-object p0
.end method
