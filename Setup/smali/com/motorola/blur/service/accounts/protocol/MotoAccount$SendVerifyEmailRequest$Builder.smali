.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2336
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$7600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2331
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 1

    .prologue
    .line 2331
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2382
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2383
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2386
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 3

    .prologue
    .line 2339
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;-><init>()V

    .line 2340
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    .line 2341
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2377
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 3

    .prologue
    .line 2390
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    if-nez v1, :cond_0

    .line 2391
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2394
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    .line 2395
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    .line 2396
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    if-nez v0, :cond_0

    .line 2350
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2353
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    .line 2354
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2470
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 2471
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2544
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 2545
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2

    .prologue
    .line 2506
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2507
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2508
    return-object p0
.end method

.method public clearSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2

    .prologue
    .line 2580
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2581
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 2582
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$7902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2433
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 2434
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2

    .prologue
    .line 2358
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

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
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1

    .prologue
    .line 2367
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2363
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 2553
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 2513
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasSession()Z
    .locals 1

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasSession()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;
    .locals 1

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2460
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 2465
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2466
    return-object p0

    .line 2463
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2534
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 2539
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2540
    return-object p0

    .line 2537
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 2495
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2497
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2502
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2503
    return-object p0

    .line 2500
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2571
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 2576
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2577
    return-object p0

    .line 2574
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    goto :goto_0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 2421
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2423
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 2428
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$7902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2429
    return-object p0

    .line 2426
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2454
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 2455
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 2445
    if-nez p1, :cond_0

    .line 2446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2448
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2449
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 2450
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2528
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 2529
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 2519
    if-nez p1, :cond_0

    .line 2520
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2522
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2523
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 2524
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2491
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2492
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 2482
    if-nez p1, :cond_0

    .line 2483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2485
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2486
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2487
    return-object p0
.end method

.method public setSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    .prologue
    .line 2564
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2565
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 2566
    return-object p0
.end method

.method public setSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 2556
    if-nez p1, :cond_0

    .line 2557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2559
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2560
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 2561
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$7902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2417
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 2418
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 2408
    if-nez p1, :cond_0

    .line 2409
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2411
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$7902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Z)Z

    .line 2412
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;->access$8002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 2413
    return-object p0
.end method
