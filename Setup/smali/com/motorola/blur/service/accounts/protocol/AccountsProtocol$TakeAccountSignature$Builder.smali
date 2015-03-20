.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6097
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$19900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6092
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20000()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 1

    .prologue
    .line 6092
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6143
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6144
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6147
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 3

    .prologue
    .line 6100
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;-><init>()V

    .line 6101
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 6102
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1

    .prologue
    .line 6135
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6136
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6138
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 3

    .prologue
    .line 6151
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    if-nez v1, :cond_0

    .line 6152
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6155
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 6156
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 6157
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 2

    .prologue
    .line 6110
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    if-nez v0, :cond_0

    .line 6111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6114
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    .line 6115
    return-object p0
.end method

.method public clearCloudid()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6216
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasCloudid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Z)Z

    .line 6217
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->cloudid_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;I)I

    .line 6218
    return-object p0
.end method

.method public clearContext()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 2

    .prologue
    .line 6198
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasContext:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Z)Z

    .line 6199
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getContext()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->context_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Ljava/lang/String;)Ljava/lang/String;

    .line 6200
    return-object p0
.end method

.method public clearNonce()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 2

    .prologue
    .line 6237
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasNonce:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Z)Z

    .line 6238
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getNonce()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->nonce_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Ljava/lang/String;)Ljava/lang/String;

    .line 6239
    return-object p0
.end method

.method public clearSignature()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 2

    .prologue
    .line 6177
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Z)Z

    .line 6178
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getSignature()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->signature_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Ljava/lang/String;)Ljava/lang/String;

    .line 6179
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 2

    .prologue
    .line 6119
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

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
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCloudid()I
    .locals 1

    .prologue
    .line 6208
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getCloudid()I

    move-result v0

    return v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6187
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getContext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1

    .prologue
    .line 6128
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6124
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6226
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getNonce()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6166
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCloudid()Z
    .locals 1

    .prologue
    .line 6205
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasCloudid()Z

    move-result v0

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .prologue
    .line 6184
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasContext()Z

    move-result v0

    return v0
.end method

.method public hasNonce()Z
    .locals 1

    .prologue
    .line 6223
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasNonce()Z

    move-result v0

    return v0
.end method

.method public hasSignature()Z
    .locals 1

    .prologue
    .line 6163
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasSignature()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 6092
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;
    .locals 1

    .prologue
    .line 6106
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6132
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setCloudid(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 6211
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasCloudid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Z)Z

    .line 6212
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->cloudid_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;I)I

    .line 6213
    return-object p0
.end method

.method public setContext(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6190
    if-nez p1, :cond_0

    .line 6191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6193
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasContext:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Z)Z

    .line 6194
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->context_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Ljava/lang/String;)Ljava/lang/String;

    .line 6195
    return-object p0
.end method

.method public setNonce(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6229
    if-nez p1, :cond_0

    .line 6230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6232
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasNonce:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Z)Z

    .line 6233
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->nonce_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Ljava/lang/String;)Ljava/lang/String;

    .line 6234
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6169
    if-nez p1, :cond_0

    .line 6170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6172
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->hasSignature:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Z)Z

    .line 6173
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->signature_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;->access$20302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountSignature;Ljava/lang/String;)Ljava/lang/String;

    .line 6174
    return-object p0
.end method
