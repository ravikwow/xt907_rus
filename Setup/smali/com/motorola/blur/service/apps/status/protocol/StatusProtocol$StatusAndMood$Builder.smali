.class public final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "StatusProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3996
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$14900(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3991
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15000()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 1

    .prologue
    .line 3991
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4042
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4043
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4046
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 3

    .prologue
    .line 3999
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;-><init>()V

    .line 4000
    .local v0, "builder":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    .line 4001
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1

    .prologue
    .line 4034
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4035
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4037
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 3

    .prologue
    .line 4050
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    if-nez v1, :cond_0

    .line 4051
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4054
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    .line 4055
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    .line 4056
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2

    .prologue
    .line 4009
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    if-nez v0, :cond_0

    .line 4010
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4013
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;-><init>(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    .line 4014
    return-object p0
.end method

.method public clearAccountId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2

    .prologue
    .line 4097
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasAccountId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4098
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getAccountId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->accountId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;

    .line 4099
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4288
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$17002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4289
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->error_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$17102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;I)I

    .line 4290
    return-object p0
.end method

.method public clearExternalId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2

    .prologue
    .line 4118
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasExternalId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4119
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getExternalId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->externalId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;

    .line 4120
    return-object p0
.end method

.method public clearFriendId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2

    .prologue
    .line 4139
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasFriendId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4140
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getFriendId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->friendId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;

    .line 4141
    return-object p0
.end method

.method public clearMood()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2

    .prologue
    .line 4231
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasMood:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4232
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->mood_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .line 4233
    return-object p0
.end method

.method public clearProvider()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2

    .prologue
    .line 4076
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasProvider:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4077
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getProvider()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->provider_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;

    .line 4078
    return-object p0
.end method

.method public clearProviderId()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4157
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasProviderId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4158
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->providerId_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;I)I

    .line 4159
    return-object p0
.end method

.method public clearStatus()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2

    .prologue
    .line 4194
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4195
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->status_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .line 4196
    return-object p0
.end method

.method public clearSync()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4249
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSync:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4250
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->sync_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4251
    return-object p0
.end method

.method public clearSyncAnchor()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2

    .prologue
    .line 4270
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4271
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getSyncAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;

    .line 4272
    return-object p0
.end method

.method public clearSyncError()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2

    .prologue
    .line 4327
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$17402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4328
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SUCCESS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncError_:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$17502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 4329
    return-object p0
.end method

.method public clearSyncTimestamp()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 3

    .prologue
    .line 4306
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncTimestamp:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$17202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4307
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncTimestamp_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$17302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;J)J

    .line 4308
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2

    .prologue
    .line 4018
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->create()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

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
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->clone()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4086
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1

    .prologue
    .line 4027
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4023
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 4280
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getError()I

    move-result v0

    return v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4107
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getExternalId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4128
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getFriendId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMood()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    .locals 1

    .prologue
    .line 4204
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getMood()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4065
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    .prologue
    .line 4149
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getProviderId()I

    move-result v0

    return v0
.end method

.method public getStatus()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    .locals 1

    .prologue
    .line 4167
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getStatus()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    return-object v0
.end method

.method public getSync()Z
    .locals 1

    .prologue
    .line 4241
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getSync()Z

    move-result v0

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4259
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getSyncAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncError()Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .locals 1

    .prologue
    .line 4316
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getSyncError()Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    move-result-object v0

    return-object v0
.end method

.method public getSyncTimestamp()J
    .locals 2

    .prologue
    .line 4298
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->getSyncTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAccountId()Z
    .locals 1

    .prologue
    .line 4083
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasAccountId()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 4277
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasExternalId()Z
    .locals 1

    .prologue
    .line 4104
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasExternalId()Z

    move-result v0

    return v0
.end method

.method public hasFriendId()Z
    .locals 1

    .prologue
    .line 4125
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasFriendId()Z

    move-result v0

    return v0
.end method

.method public hasMood()Z
    .locals 1

    .prologue
    .line 4201
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasMood()Z

    move-result v0

    return v0
.end method

.method public hasProvider()Z
    .locals 1

    .prologue
    .line 4062
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasProvider()Z

    move-result v0

    return v0
.end method

.method public hasProviderId()Z
    .locals 1

    .prologue
    .line 4146
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasProviderId()Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 4164
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasStatus()Z

    move-result v0

    return v0
.end method

.method public hasSync()Z
    .locals 1

    .prologue
    .line 4238
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSync()Z

    move-result v0

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 4256
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncAnchor()Z

    move-result v0

    return v0
.end method

.method public hasSyncError()Z
    .locals 1

    .prologue
    .line 4313
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncError()Z

    move-result v0

    return v0
.end method

.method public hasSyncTimestamp()Z
    .locals 1

    .prologue
    .line 4295
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncTimestamp()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3991
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;
    .locals 1

    .prologue
    .line 4005
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4031
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMood(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .prologue
    .line 4220
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasMood()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->mood_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4222
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->mood_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16500(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->mood_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .line 4227
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasMood:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4228
    return-object p0

    .line 4225
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->mood_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    goto :goto_0
.end method

.method public mergeStatus(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .prologue
    .line 4183
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->status_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->getDefaultInstance()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4185
    iget-object v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->status_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16300(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;->newBuilder(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->buildPartial()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->status_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .line 4190
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4191
    return-object p0

    .line 4188
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->status_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    goto :goto_0
.end method

.method public setAccountId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4089
    if-nez p1, :cond_0

    .line 4090
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4092
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasAccountId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4093
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->accountId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;

    .line 4094
    return-object p0
.end method

.method public setError(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 4283
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$17002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4284
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->error_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$17102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;I)I

    .line 4285
    return-object p0
.end method

.method public setExternalId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4110
    if-nez p1, :cond_0

    .line 4111
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4113
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasExternalId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4114
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->externalId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;

    .line 4115
    return-object p0
.end method

.method public setFriendId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4131
    if-nez p1, :cond_0

    .line 4132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4134
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasFriendId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4135
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->friendId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;

    .line 4136
    return-object p0
.end method

.method public setMood(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    .prologue
    .line 4215
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasMood:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4216
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->mood_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .line 4217
    return-object p0
.end method

.method public setMood(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .prologue
    .line 4207
    if-nez p1, :cond_0

    .line 4208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4210
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasMood:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4211
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->mood_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    .line 4212
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4068
    if-nez p1, :cond_0

    .line 4069
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4071
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasProvider:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4072
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->provider_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$15302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;

    .line 4073
    return-object p0
.end method

.method public setProviderId(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 4152
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasProviderId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16002(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4153
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->providerId_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16102(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;I)I

    .line 4154
    return-object p0
.end method

.method public setStatus(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4179
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    invoke-virtual {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;->build()Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->status_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .line 4180
    return-object p0
.end method

.method public setStatus(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .prologue
    .line 4170
    if-nez p1, :cond_0

    .line 4171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4173
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4174
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->status_:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    .line 4175
    return-object p0
.end method

.method public setSync(Z)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 4244
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSync:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16602(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4245
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->sync_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16702(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4246
    return-object p0
.end method

.method public setSyncAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4262
    if-nez p1, :cond_0

    .line 4263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4265
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16802(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4266
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$16902(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Ljava/lang/String;)Ljava/lang/String;

    .line 4267
    return-object p0
.end method

.method public setSyncError(Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .prologue
    .line 4319
    if-nez p1, :cond_0

    .line 4320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4322
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$17402(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4323
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncError_:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$17502(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 4324
    return-object p0
.end method

.method public setSyncTimestamp(J)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 4301
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->hasSyncTimestamp:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$17202(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;Z)Z

    .line 4302
    iget-object v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;->result:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->syncTimestamp_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;->access$17302(Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;J)J

    .line 4303
    return-object p0
.end method
