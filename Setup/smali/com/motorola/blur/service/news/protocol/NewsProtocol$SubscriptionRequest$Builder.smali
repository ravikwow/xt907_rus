.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3171
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3166
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11200()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 1

    .prologue
    .line 3166
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3217
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3218
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3221
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 3

    .prologue
    .line 3174
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;-><init>()V

    .line 3175
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    .line 3176
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3210
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3212
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 3

    .prologue
    .line 3225
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    if-nez v1, :cond_0

    .line 3226
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3229
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    .line 3230
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    .line 3231
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 2

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    if-nez v0, :cond_0

    .line 3185
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3188
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    .line 3189
    return-object p0
.end method

.method public clearDeleteSubs()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 2

    .prologue
    .line 3343
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasDeleteSubs:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$12002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z

    .line 3344
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->deleteSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$12102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    .line 3345
    return-object p0
.end method

.method public clearNewSubs()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 2

    .prologue
    .line 3306
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasNewSubs:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z

    .line 3307
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    .line 3308
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 2

    .prologue
    .line 3269
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z

    .line 3270
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->ADD:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->type_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    .line 3271
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3248
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z

    .line 3249
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;I)I

    .line 3250
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 2

    .prologue
    .line 3193
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

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
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1

    .prologue
    .line 3202
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteSubs()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    .locals 1

    .prologue
    .line 3316
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->getDeleteSubs()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3198
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getNewSubs()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    .locals 1

    .prologue
    .line 3279
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->getNewSubs()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;
    .locals 1

    .prologue
    .line 3258
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->getType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasDeleteSubs()Z
    .locals 1

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasDeleteSubs()Z

    move-result v0

    return v0
.end method

.method public hasNewSubs()Z
    .locals 1

    .prologue
    .line 3276
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasNewSubs()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 3255
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 3237
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3166
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
    .locals 1

    .prologue
    .line 3180
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3206
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeDeleteSubs(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasDeleteSubs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->deleteSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$12100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3334
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->deleteSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$12100(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->deleteSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$12102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    .line 3339
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasDeleteSubs:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$12002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z

    .line 3340
    return-object p0

    .line 3337
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->deleteSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$12102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    goto :goto_0
.end method

.method public mergeNewSubs(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    .prologue
    .line 3295
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasNewSubs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3297
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    .line 3302
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasNewSubs:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z

    .line 3303
    return-object p0

    .line 3300
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    goto :goto_0
.end method

.method public setDeleteSubs(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    .prologue
    .line 3327
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasDeleteSubs:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$12002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z

    .line 3328
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->deleteSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$12102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    .line 3329
    return-object p0
.end method

.method public setDeleteSubs(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    .prologue
    .line 3319
    if-nez p1, :cond_0

    .line 3320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3322
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasDeleteSubs:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$12002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z

    .line 3323
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->deleteSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$12102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    .line 3324
    return-object p0
.end method

.method public setNewSubs(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasNewSubs:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z

    .line 3291
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    .line 3292
    return-object p0
.end method

.method public setNewSubs(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    .prologue
    .line 3282
    if-nez p1, :cond_0

    .line 3283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3285
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasNewSubs:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z

    .line 3286
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->newSubs_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    .line 3287
    return-object p0
.end method

.method public setType(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    .prologue
    .line 3261
    if-nez p1, :cond_0

    .line 3262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3264
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z

    .line 3265
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->type_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    .line 3266
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3243
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;Z)Z

    .line 3244
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->access$11502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;I)I

    .line 3245
    return-object p0
.end method
