.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2345
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$9100(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2340
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9200()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 1

    .prologue
    .line 2340
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2392
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2395
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 3

    .prologue
    .line 2348
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;-><init>()V

    .line 2349
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    .line 2350
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2384
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2386
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 3

    .prologue
    .line 2399
    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    if-nez v1, :cond_0

    .line 2400
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2403
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    .line 2404
    .local v0, "returnMe":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    .line 2405
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 2

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    if-nez v0, :cond_0

    .line 2359
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2362
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    .line 2363
    return-object p0
.end method

.method public clearCallback()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 2

    .prologue
    .line 2446
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasCallback:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$9602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z

    .line 2447
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getCallback()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->callback_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$9702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 2448
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 2

    .prologue
    .line 2504
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z

    .line 2505
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    .line 2506
    return-object p0
.end method

.method public clearSnpExtendedError()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2522
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasSnpExtendedError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z

    .line 2523
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->snpExtendedError_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;I)I

    .line 2524
    return-object p0
.end method

.method public clearToken()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 2

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$9802(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z

    .line 2468
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->token_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$9902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 2469
    return-object p0
.end method

.method public clearUrl()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 2

    .prologue
    .line 2425
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$9402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z

    .line 2426
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->url_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$9502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 2427
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 2

    .prologue
    .line 2367
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

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
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCallback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1

    .prologue
    .line 2376
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2372
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    .locals 1

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getError()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getSnpExtendedError()I
    .locals 1

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getSnpExtendedError()I

    move-result v0

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCallback()Z
    .locals 1

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasCallback()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasSnpExtendedError()Z
    .locals 1

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasSnpExtendedError()Z

    move-result v0

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasToken()Z

    move-result v0

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasUrl()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;
    .locals 1

    .prologue
    .line 2354
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeError(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10100(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2495
    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10100(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;->newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    .line 2500
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z

    .line 2501
    return-object p0

    .line 2498
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2438
    if-nez p1, :cond_0

    .line 2439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2441
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasCallback:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$9602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z

    .line 2442
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->callback_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$9702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 2443
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z

    .line 2489
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    .line 2490
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    .prologue
    .line 2480
    if-nez p1, :cond_0

    .line 2481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2483
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z

    .line 2484
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Error;

    .line 2485
    return-object p0
.end method

.method public setSnpExtendedError(I)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasSnpExtendedError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z

    .line 2518
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->snpExtendedError_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$10302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;I)I

    .line 2519
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2459
    if-nez p1, :cond_0

    .line 2460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2462
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$9802(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z

    .line 2463
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->token_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$9902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 2464
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2417
    if-nez p1, :cond_0

    .line 2418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2420
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->hasUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$9402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Z)Z

    .line 2421
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->url_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;->access$9502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 2422
    return-object p0
.end method
