.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3018
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11900(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3013
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12000()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;
    .locals 1

    .prologue
    .line 3013
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3064
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3065
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3068
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;
    .locals 3

    .prologue
    .line 3021
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;-><init>()V

    .line 3022
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;
    new-instance v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    .line 3023
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    .locals 1

    .prologue
    .line 3056
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3057
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3059
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    .locals 3

    .prologue
    .line 3072
    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    if-nez v1, :cond_0

    .line 3073
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3076
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    .line 3077
    .local v0, "returnMe":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    .line 3078
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;
    .locals 2

    .prologue
    .line 3031
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    if-nez v0, :cond_0

    .line 3032
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3035
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    .line 3036
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;
    .locals 2

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->access$12202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;Z)Z

    .line 3099
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$ErrorType;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$ErrorType;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->type_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$ErrorType;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->access$12302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$ErrorType;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$ErrorType;

    .line 3100
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;
    .locals 2

    .prologue
    .line 3040
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

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
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    .locals 1

    .prologue
    .line 3049
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3045
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$ErrorType;
    .locals 1

    .prologue
    .line 3087
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->getType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$ErrorType;

    move-result-object v0

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->hasType()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3013
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;
    .locals 1

    .prologue
    .line 3027
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3053
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setType(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$ErrorType;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$ErrorType;

    .prologue
    .line 3090
    if-nez p1, :cond_0

    .line 3091
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3093
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->access$12202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;Z)Z

    .line 3094
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->type_:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$ErrorType;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;->access$12302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error;Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$ErrorType;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse$Error$ErrorType;

    .line 3095
    return-object p0
.end method
