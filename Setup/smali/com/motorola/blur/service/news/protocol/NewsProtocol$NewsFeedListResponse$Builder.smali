.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1072
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3400(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1067
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 1

    .prologue
    .line 1067
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1118
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1122
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 3

    .prologue
    .line 1075
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;-><init>()V

    .line 1076
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    .line 1077
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1113
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 3

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    if-nez v1, :cond_0

    .line 1127
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    .line 1131
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    .line 1132
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    if-nez v0, :cond_0

    .line 1086
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1089
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    .line 1090
    return-object p0
.end method

.method public clearData()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Z)Z

    .line 1224
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->data_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .line 1225
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$3902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Z)Z

    .line 1187
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 1188
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1149
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$3702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Z)Z

    .line 1150
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$3802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;I)I

    .line 1151
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 2

    .prologue
    .line 1094
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

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
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->getData()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1

    .prologue
    .line 1103
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1099
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->getError()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeData(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->data_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1214
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->data_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4200(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->data_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .line 1219
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Z)Z

    .line 1220
    return-object p0

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->data_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    goto :goto_0
.end method

.method public mergeError(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1177
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4000(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->newBuilder(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 1182
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$3902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Z)Z

    .line 1183
    return-object p0

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    goto :goto_0
.end method

.method public setData(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Z)Z

    .line 1208
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->data_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .line 1209
    return-object p0
.end method

.method public setData(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .prologue
    .line 1199
    if-nez p1, :cond_0

    .line 1200
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Z)Z

    .line 1203
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->data_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    .line 1204
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$3902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Z)Z

    .line 1171
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 1172
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .prologue
    .line 1162
    if-nez p1, :cond_0

    .line 1163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$3902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Z)Z

    .line 1166
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->error_:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$4002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    .line 1167
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$3702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;Z)Z

    .line 1145
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;->access$3802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;I)I

    .line 1146
    return-object p0
.end method
