.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2251
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$7300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2246
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 1

    .prologue
    .line 2246
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2297
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2298
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2301
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 3

    .prologue
    .line 2254
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;-><init>()V

    .line 2255
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    .line 2256
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    .locals 1

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2290
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2292
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    .locals 3

    .prologue
    .line 2305
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    if-nez v1, :cond_0

    .line 2306
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2309
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    .line 2310
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    .line 2311
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 2

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    if-nez v0, :cond_0

    .line 2265
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2268
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    .line 2269
    return-object p0
.end method

.method public clearAccountInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 2

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Z)Z

    .line 2348
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 2349
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 2

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Z)Z

    .line 2385
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 2386
    return-object p0
.end method

.method public clearSessionInfo()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 2

    .prologue
    .line 2421
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$8002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Z)Z

    .line 2422
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$8102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 2423
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 2

    .prologue
    .line 2273
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

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
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    .locals 1

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->getAccountInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    .locals 1

    .prologue
    .line 2282
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2278
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    .locals 1

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    .locals 1

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAccountInfo()Z
    .locals 1

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasAccountInfo()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 2354
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasSessionInfo()Z
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasSessionInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2246
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    .locals 1

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasAccountInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7700(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2338
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7700(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 2343
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Z)Z

    .line 2344
    return-object p0

    .line 2341
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2375
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7900(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 2380
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Z)Z

    .line 2381
    return-object p0

    .line 2378
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    goto :goto_0
.end method

.method public mergeSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasSessionInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$8100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2412
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$8100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$8102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 2417
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$8002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Z)Z

    .line 2418
    return-object p0

    .line 2415
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$8102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    goto :goto_0
.end method

.method public setAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Z)Z

    .line 2332
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 2333
    return-object p0
.end method

.method public setAccountInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .prologue
    .line 2323
    if-nez p1, :cond_0

    .line 2324
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2326
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Z)Z

    .line 2327
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->accountInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;

    .line 2328
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Z)Z

    .line 2369
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 2370
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .prologue
    .line 2360
    if-nez p1, :cond_0

    .line 2361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2363
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Z)Z

    .line 2364
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$7902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;

    .line 2365
    return-object p0
.end method

.method public setSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$8002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Z)Z

    .line 2406
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$8102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 2407
    return-object p0
.end method

.method public setSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .prologue
    .line 2397
    if-nez p1, :cond_0

    .line 2398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2400
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$8002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Z)Z

    .line 2401
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->access$8102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;

    .line 2402
    return-object p0
.end method
