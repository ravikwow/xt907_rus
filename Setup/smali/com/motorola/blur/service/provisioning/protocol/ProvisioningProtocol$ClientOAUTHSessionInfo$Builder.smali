.class public final Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ProvisioningProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2290
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$8700(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2285
    invoke-direct {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
    .locals 1

    .prologue
    .line 2285
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2336
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2337
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2340
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
    .locals 3

    .prologue
    .line 2293
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;-><init>()V

    .line 2294
    .local v0, "builder":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
    new-instance v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;-><init>(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .line 2295
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .locals 1

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2329
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2331
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .locals 3

    .prologue
    .line 2344
    iget-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    if-nez v1, :cond_0

    .line 2345
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2348
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .line 2349
    .local v0, "returnMe":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .line 2350
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
    .locals 2

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    if-nez v0, :cond_0

    .line 2304
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2307
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;-><init>(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .line 2308
    return-object p0
.end method

.method public clearLastAccountid()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
    .locals 2

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->hasLastAccountid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9402(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;Z)Z

    .line 2413
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getLastAccountid()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->lastAccountid_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9502(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2414
    return-object p0
.end method

.method public clearLastAutoLoginKey()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
    .locals 2

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->hasLastAutoLoginKey:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9202(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;Z)Z

    .line 2392
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getLastAutoLoginKey()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->lastAutoLoginKey_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9302(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2393
    return-object p0
.end method

.method public clearLastDeviceid()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
    .locals 3

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->hasLastDeviceid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9602(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;Z)Z

    .line 2431
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->lastDeviceid_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9702(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;J)J

    .line 2432
    return-object p0
.end method

.method public clearLastOauthToken()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
    .locals 2

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->hasLastOauthToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9002(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;Z)Z

    .line 2371
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getLastOauthToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->lastOauthToken_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9102(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2372
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
    .locals 2

    .prologue
    .line 2312
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

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
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .locals 1

    .prologue
    .line 2321
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2317
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLastAccountid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2401
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getLastAccountid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAutoLoginKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getLastAutoLoginKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastDeviceid()J
    .locals 2

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getLastDeviceid()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastOauthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getLastOauthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLastAccountid()Z
    .locals 1

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->hasLastAccountid()Z

    move-result v0

    return v0
.end method

.method public hasLastAutoLoginKey()Z
    .locals 1

    .prologue
    .line 2377
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->hasLastAutoLoginKey()Z

    move-result v0

    return v0
.end method

.method public hasLastDeviceid()Z
    .locals 1

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->hasLastDeviceid()Z

    move-result v0

    return v0
.end method

.method public hasLastOauthToken()Z
    .locals 1

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->hasLastOauthToken()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2285
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->internalGetResult()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .locals 1

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setLastAccountid(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2404
    if-nez p1, :cond_0

    .line 2405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2407
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->hasLastAccountid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9402(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;Z)Z

    .line 2408
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->lastAccountid_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9502(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2409
    return-object p0
.end method

.method public setLastAutoLoginKey(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2383
    if-nez p1, :cond_0

    .line 2384
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2386
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->hasLastAutoLoginKey:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9202(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;Z)Z

    .line 2387
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->lastAutoLoginKey_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9302(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2388
    return-object p0
.end method

.method public setLastDeviceid(J)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 2425
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->hasLastDeviceid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9602(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;Z)Z

    .line 2426
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->lastDeviceid_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9702(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;J)J

    .line 2427
    return-object p0
.end method

.method public setLastOauthToken(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2362
    if-nez p1, :cond_0

    .line 2363
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2365
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->hasLastOauthToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9002(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;Z)Z

    .line 2366
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->lastOauthToken_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->access$9102(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2367
    return-object p0
.end method
