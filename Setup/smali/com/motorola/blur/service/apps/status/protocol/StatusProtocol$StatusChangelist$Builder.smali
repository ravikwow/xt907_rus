.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 3

    .prologue
    .line 207
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;-><init>()V

    .line 208
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    .line 209
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    if-nez v1, :cond_0

    .line 259
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    .line 263
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    .line 264
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    .line 222
    return-object p0
.end method

.method public clearMoods()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasMoods:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Z)Z

    .line 338
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->moods_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .line 339
    return-object p0
.end method

.method public clearStatuses()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasStatuses:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Z)Z

    .line 301
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->statuses_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .line 302
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

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
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMoods()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->getMoods()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    return-object v0
.end method

.method public getStatuses()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->getStatuses()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    return-object v0
.end method

.method public hasMoods()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasMoods()Z

    move-result v0

    return v0
.end method

.method public hasStatuses()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasStatuses()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMoods(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasMoods()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->moods_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$800(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->moods_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$800(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->moods_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasMoods:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Z)Z

    .line 334
    return-object p0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->moods_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    goto :goto_0
.end method

.method public mergeStatuses(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasStatuses()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->statuses_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->statuses_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$600(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->statuses_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasStatuses:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Z)Z

    .line 297
    return-object p0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->statuses_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    goto :goto_0
.end method

.method public setMoods(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasMoods:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Z)Z

    .line 322
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->moods_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .line 323
    return-object p0
.end method

.method public setMoods(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasMoods:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Z)Z

    .line 317
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->moods_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    .line 318
    return-object p0
.end method

.method public setStatuses(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasStatuses:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Z)Z

    .line 285
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->statuses_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .line 286
    return-object p0
.end method

.method public setStatuses(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->hasStatuses:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Z)Z

    .line 280
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->statuses_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;->access$602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    .line 281
    return-object p0
.end method
