.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2207
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6900(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2202
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7000()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 1

    .prologue
    .line 2202
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2253
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2254
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2257
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 3

    .prologue
    .line 2210
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;-><init>()V

    .line 2211
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;-><init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    .line 2212
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2246
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2248
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 3

    .prologue
    .line 2261
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    if-nez v1, :cond_0

    .line 2262
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2265
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    .line 2266
    .local v0, "returnMe":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    .line 2267
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 2

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    if-nez v0, :cond_0

    .line 2221
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2224
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;-><init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    .line 2225
    return-object p0
.end method

.method public clearCloud()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 2

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasCloud:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7602(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Z)Z

    .line 2343
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7702(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 2344
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 2

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Z)Z

    .line 2306
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    sget-object v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;

    .line 2307
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2284
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Z)Z

    .line 2285
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;I)I

    .line 2286
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 2

    .prologue
    .line 2229
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

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
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCloud()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    .locals 1

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->getCloud()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1

    .prologue
    .line 2238
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2234
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;
    .locals 1

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->getError()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasCloud()Z
    .locals 1

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasCloud()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;
    .locals 1

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeCloud(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasCloud()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7700(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2333
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    # getter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7700(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;->newBuilder(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7702(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 2338
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasCloud:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7602(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Z)Z

    .line 2339
    return-object p0

    .line 2336
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7702(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    goto :goto_0
.end method

.method public setCloud(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasCloud:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7602(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Z)Z

    .line 2327
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7702(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 2328
    return-object p0
.end method

.method public setCloud(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .prologue
    .line 2318
    if-nez p1, :cond_0

    .line 2319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2321
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasCloud:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7602(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Z)Z

    .line 2322
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->cloud_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7702(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;

    .line 2323
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;

    .prologue
    .line 2297
    if-nez p1, :cond_0

    .line 2298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2300
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Z)Z

    .line 2301
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->error_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Error;

    .line 2302
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;Z)Z

    .line 2280
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;->access$7302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;I)I

    .line 2281
    return-object p0
.end method
