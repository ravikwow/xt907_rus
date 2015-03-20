.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3232
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$12400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3227
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12500()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 1

    .prologue
    .line 3227
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3278
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3279
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3282
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 3

    .prologue
    .line 3235
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;-><init>()V

    .line 3236
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    .line 3237
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3271
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3273
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 3

    .prologue
    .line 3286
    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    if-nez v1, :cond_0

    .line 3287
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3290
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    .line 3291
    .local v0, "returnMe":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    .line 3292
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 2

    .prologue
    .line 3245
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    if-nez v0, :cond_0

    .line 3246
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3249
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    .line 3250
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 2

    .prologue
    .line 3391
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z

    .line 3392
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    .line 3393
    return-object p0
.end method

.method public clearRealName()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 2

    .prologue
    .line 3354
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasRealName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z

    .line 3355
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getRealName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->realName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 3356
    return-object p0
.end method

.method public clearSnpExtendedError()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3409
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasSnpExtendedError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z

    .line 3410
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->snpExtendedError_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;I)I

    .line 3411
    return-object p0
.end method

.method public clearUid()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 2

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasUid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$12702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z

    .line 3313
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getUid()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->uid_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$12802(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 3314
    return-object p0
.end method

.method public clearUserName()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 2

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasUserName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$12902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z

    .line 3334
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getUserName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->userName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 3335
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 2

    .prologue
    .line 3254
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

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
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1

    .prologue
    .line 3263
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3259
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    .locals 1

    .prologue
    .line 3364
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getError()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3343
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getRealName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnpExtendedError()I
    .locals 1

    .prologue
    .line 3401
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getSnpExtendedError()I

    move-result v0

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3301
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 3361
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasRealName()Z
    .locals 1

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasRealName()Z

    move-result v0

    return v0
.end method

.method public hasSnpExtendedError()Z
    .locals 1

    .prologue
    .line 3398
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasSnpExtendedError()Z

    move-result v0

    return v0
.end method

.method public hasUid()Z
    .locals 1

    .prologue
    .line 3298
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasUid()Z

    move-result v0

    return v0
.end method

.method public hasUserName()Z
    .locals 1

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasUserName()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3227
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;
    .locals 1

    .prologue
    .line 3241
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3267
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeError(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    .prologue
    .line 3380
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3382
    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    # getter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13400(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->newBuilder(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    .line 3387
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z

    .line 3388
    return-object p0

    .line 3385
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    .prologue
    .line 3375
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z

    .line 3376
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    .line 3377
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    .prologue
    .line 3367
    if-nez p1, :cond_0

    .line 3368
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3370
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z

    .line 3371
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->error_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    .line 3372
    return-object p0
.end method

.method public setRealName(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3346
    if-nez p1, :cond_0

    .line 3347
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3349
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasRealName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z

    .line 3350
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->realName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 3351
    return-object p0
.end method

.method public setSnpExtendedError(I)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3404
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasSnpExtendedError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z

    .line 3405
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->snpExtendedError_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;I)I

    .line 3406
    return-object p0
.end method

.method public setUid(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3304
    if-nez p1, :cond_0

    .line 3305
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3307
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasUid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$12702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z

    .line 3308
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->uid_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$12802(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 3309
    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3325
    if-nez p1, :cond_0

    .line 3326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3328
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->hasUserName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$12902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Z)Z

    .line 3329
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->userName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;->access$13002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 3330
    return-object p0
.end method
