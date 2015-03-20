.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 1

    .prologue
    .line 344
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 399
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 3

    .prologue
    .line 352
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;-><init>()V

    .line 353
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    .line 354
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 3

    .prologue
    .line 403
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    if-nez v1, :cond_0

    .line 404
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    .line 408
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    .line 409
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    .line 367
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 483
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 484
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 520
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 521
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 557
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 558
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 446
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 447
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

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
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1

    .prologue
    .line 380
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 376
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 478
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 479
    return-object p0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 516
    return-object p0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 552
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 553
    return-object p0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 441
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 442
    return-object p0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 467
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 468
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 458
    if-nez p1, :cond_0

    .line 459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 462
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 463
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 504
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 505
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 495
    if-nez p1, :cond_0

    .line 496
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 499
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 500
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 540
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 541
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 542
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 532
    if-nez p1, :cond_0

    .line 533
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 536
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$1202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 537
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 430
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 431
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Z)Z

    .line 425
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;->access$602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 426
    return-object p0
.end method
