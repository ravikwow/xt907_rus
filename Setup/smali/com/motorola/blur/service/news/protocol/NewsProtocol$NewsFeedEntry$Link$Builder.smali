.class public final Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "NewsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6084
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$21800(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6079
    invoke-direct {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21900()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 1

    .prologue
    .line 6079
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6130
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6131
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6134
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 3

    .prologue
    .line 6087
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;-><init>()V

    .line 6088
    .local v0, "builder":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    new-instance v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    .line 6089
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1

    .prologue
    .line 6122
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6123
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6125
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 3

    .prologue
    .line 6138
    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    if-nez v1, :cond_0

    .line 6139
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6142
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    .line 6143
    .local v0, "returnMe":Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    .line 6144
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2

    .prologue
    .line 6097
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    if-nez v0, :cond_0

    .line 6098
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6101
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;-><init>(Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    .line 6102
    return-object p0
.end method

.method public clearHeight()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6305
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHeight:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$23502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6306
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->height_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$23602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;I)I

    .line 6307
    return-object p0
.end method

.method public clearHref()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2

    .prologue
    .line 6164
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHref:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6165
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getHref()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->href_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;

    .line 6166
    return-object p0
.end method

.method public clearHreflang()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2

    .prologue
    .line 6227
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHreflang:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6228
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getHreflang()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hreflang_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;

    .line 6229
    return-object p0
.end method

.method public clearLength()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2

    .prologue
    .line 6269
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasLength:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$23102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6270
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getLength()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->length_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$23202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;

    .line 6271
    return-object p0
.end method

.method public clearRel()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2

    .prologue
    .line 6185
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasRel:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6186
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getRel()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->rel_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;

    .line 6187
    return-object p0
.end method

.method public clearTitle()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2

    .prologue
    .line 6248
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasTitle:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6249
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getTitle()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->title_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$23002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;

    .line 6250
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2

    .prologue
    .line 6206
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6207
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->type_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;

    .line 6208
    return-object p0
.end method

.method public clearWidth()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6287
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasWidth:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$23302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6288
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->width_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$23402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;I)I

    .line 6289
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2

    .prologue
    .line 6106
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->create()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

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
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->clone()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1

    .prologue
    .line 6115
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getDefaultInstance()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6111
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 6297
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6153
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getHref()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHreflang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6216
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getHreflang()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6258
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getLength()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6174
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getRel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6237
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6195
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 6279
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->getWidth()I

    move-result v0

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .prologue
    .line 6294
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHeight()Z

    move-result v0

    return v0
.end method

.method public hasHref()Z
    .locals 1

    .prologue
    .line 6150
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHref()Z

    move-result v0

    return v0
.end method

.method public hasHreflang()Z
    .locals 1

    .prologue
    .line 6213
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHreflang()Z

    move-result v0

    return v0
.end method

.method public hasLength()Z
    .locals 1

    .prologue
    .line 6255
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasLength()Z

    move-result v0

    return v0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 6171
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasRel()Z

    move-result v0

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 6234
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasTitle()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 6192
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasWidth()Z
    .locals 1

    .prologue
    .line 6276
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasWidth()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 6079
    invoke-virtual {p0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;
    .locals 1

    .prologue
    .line 6093
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6119
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setHeight(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 6300
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHeight:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$23502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6301
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->height_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$23602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;I)I

    .line 6302
    return-object p0
.end method

.method public setHref(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6156
    if-nez p1, :cond_0

    .line 6157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6159
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHref:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6160
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->href_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;

    .line 6161
    return-object p0
.end method

.method public setHreflang(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6219
    if-nez p1, :cond_0

    .line 6220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6222
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasHreflang:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22702(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6223
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hreflang_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22802(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;

    .line 6224
    return-object p0
.end method

.method public setLength(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6261
    if-nez p1, :cond_0

    .line 6262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6264
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasLength:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$23102(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6265
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->length_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$23202(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;

    .line 6266
    return-object p0
.end method

.method public setRel(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6177
    if-nez p1, :cond_0

    .line 6178
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6180
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasRel:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6181
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->rel_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;

    .line 6182
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6240
    if-nez p1, :cond_0

    .line 6241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6243
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasTitle:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22902(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6244
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->title_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$23002(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;

    .line 6245
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6198
    if-nez p1, :cond_0

    .line 6199
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6201
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22502(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6202
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->type_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$22602(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Ljava/lang/String;)Ljava/lang/String;

    .line 6203
    return-object p0
.end method

.method public setWidth(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 6282
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->hasWidth:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$23302(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;Z)Z

    .line 6283
    iget-object v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;->result:Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->width_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;->access$23402(Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;I)I

    .line 6284
    return-object p0
.end method
