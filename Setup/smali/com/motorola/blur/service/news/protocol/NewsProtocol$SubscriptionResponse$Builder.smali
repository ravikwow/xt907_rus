.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3991
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$13900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3986
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14000()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 1

    .prologue
    .line 3986
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4037
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4038
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4041
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 3

    .prologue
    .line 3994
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;-><init>()V

    .line 3995
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    .line 3996
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1

    .prologue
    .line 4029
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4030
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4032
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 3

    .prologue
    .line 4045
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    if-nez v1, :cond_0

    .line 4046
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4049
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    .line 4050
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    .line 4051
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2

    .prologue
    .line 4004
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    if-nez v0, :cond_0

    .line 4005
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4008
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    .line 4009
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2

    .prologue
    .line 4105
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z

    .line 4106
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 4107
    return-object p0
.end method

.method public clearErrorDetailList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2

    .prologue
    .line 4179
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasErrorDetailList:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z

    .line 4180
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->errorDetailList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    .line 4181
    return-object p0
.end method

.method public clearSubList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2

    .prologue
    .line 4142
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasSubList:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z

    .line 4143
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->subList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    .line 4144
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4068
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z

    .line 4069
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;I)I

    .line 4070
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2

    .prologue
    .line 4013
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

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
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1

    .prologue
    .line 4022
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4018
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1

    .prologue
    .line 4078
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->getError()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public getErrorDetailList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    .locals 1

    .prologue
    .line 4152
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->getErrorDetailList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    return-object v0
.end method

.method public getSubList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    .locals 1

    .prologue
    .line 4115
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->getSubList()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 4060
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 4075
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasErrorDetailList()Z
    .locals 1

    .prologue
    .line 4149
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasErrorDetailList()Z

    move-result v0

    return v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 4112
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasSubList()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 4057
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3986
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;
    .locals 1

    .prologue
    .line 4000
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4026
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeError(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .prologue
    .line 4094
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14500(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4096
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14500(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 4101
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z

    .line 4102
    return-object p0

    .line 4099
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    goto :goto_0
.end method

.method public mergeErrorDetailList(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    .prologue
    .line 4168
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasErrorDetailList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->errorDetailList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4170
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->errorDetailList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14900(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->errorDetailList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    .line 4175
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasErrorDetailList:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z

    .line 4176
    return-object p0

    .line 4173
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->errorDetailList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    goto :goto_0
.end method

.method public mergeSubList(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    .prologue
    .line 4131
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasSubList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->subList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4133
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->subList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14700(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->subList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    .line 4138
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasSubList:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z

    .line 4139
    return-object p0

    .line 4136
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->subList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    .prologue
    .line 4089
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z

    .line 4090
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 4091
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .prologue
    .line 4081
    if-nez p1, :cond_0

    .line 4082
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4084
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z

    .line 4085
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 4086
    return-object p0
.end method

.method public setErrorDetailList(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    .prologue
    .line 4163
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasErrorDetailList:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z

    .line 4164
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->errorDetailList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    .line 4165
    return-object p0
.end method

.method public setErrorDetailList(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    .prologue
    .line 4155
    if-nez p1, :cond_0

    .line 4156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4158
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasErrorDetailList:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z

    .line 4159
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->errorDetailList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    .line 4160
    return-object p0
.end method

.method public setSubList(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    .prologue
    .line 4126
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasSubList:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z

    .line 4127
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->subList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    .line 4128
    return-object p0
.end method

.method public setSubList(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    .prologue
    .line 4118
    if-nez p1, :cond_0

    .line 4119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4121
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasSubList:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z

    .line 4122
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->subList_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    .line 4123
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 4063
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;Z)Z

    .line 4064
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;->access$14302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;I)I

    .line 4065
    return-object p0
.end method
