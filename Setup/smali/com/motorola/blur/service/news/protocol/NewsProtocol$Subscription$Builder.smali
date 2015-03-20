.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5021
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$18300(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5016
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18400()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    .locals 1

    .prologue
    .line 5016
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5068
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5071
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    .locals 3

    .prologue
    .line 5024
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;-><init>()V

    .line 5025
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    .line 5026
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1

    .prologue
    .line 5059
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5060
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5062
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 3

    .prologue
    .line 5075
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    if-nez v1, :cond_0

    .line 5076
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5079
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    .line 5080
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    .line 5081
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    .locals 2

    .prologue
    .line 5034
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    if-nez v0, :cond_0

    .line 5035
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5038
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    .line 5039
    return-object p0
.end method

.method public clearInfo()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    .locals 2

    .prologue
    .line 5117
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->hasInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->access$18602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;Z)Z

    .line 5118
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->info_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->access$18702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .line 5119
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    .locals 2

    .prologue
    .line 5043
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

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
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1

    .prologue
    .line 5052
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5048
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    .locals 1

    .prologue
    .line 5090
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->getInfo()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasInfo()Z
    .locals 1

    .prologue
    .line 5087
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->hasInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5016
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;
    .locals 1

    .prologue
    .line 5030
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5056
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeInfo(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .prologue
    .line 5106
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->hasInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->info_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->access$18700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5108
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->info_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->access$18700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->info_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->access$18702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .line 5113
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->hasInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->access$18602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;Z)Z

    .line 5114
    return-object p0

    .line 5111
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->info_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->access$18702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    goto :goto_0
.end method

.method public setInfo(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    .prologue
    .line 5101
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->hasInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->access$18602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;Z)Z

    .line 5102
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->info_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->access$18702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .line 5103
    return-object p0
.end method

.method public setInfo(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .prologue
    .line 5093
    if-nez p1, :cond_0

    .line 5094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5096
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->hasInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->access$18602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;Z)Z

    .line 5097
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->info_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;->access$18702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    .line 5098
    return-object p0
.end method
