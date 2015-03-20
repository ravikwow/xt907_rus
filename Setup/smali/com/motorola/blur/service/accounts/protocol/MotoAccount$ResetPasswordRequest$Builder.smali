.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8336
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$29300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8331
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$29400()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 8331
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8382
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8383
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 8386
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 3

    .prologue
    .line 8339
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;-><init>()V

    .line 8340
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    .line 8341
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1

    .prologue
    .line 8374
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8375
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8377
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 3

    .prologue
    .line 8390
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    if-nez v1, :cond_0

    .line 8391
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8394
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    .line 8395
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    .line 8396
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 8349
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    if-nez v0, :cond_0

    .line 8350
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8353
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    .line 8354
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 8490
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z

    .line 8491
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 8492
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 8527
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z

    .line 8528
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8529
    return-object p0
.end method

.method public clearToken()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 8453
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z

    .line 8454
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->getToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->token_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 8455
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 8432
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z

    .line 8433
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 8434
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 8358
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

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
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 8463
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1

    .prologue
    .line 8367
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8363
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 8500
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8442
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 8405
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 8460
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 8497
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 8439
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasToken()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 8402
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 8331
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;
    .locals 1

    .prologue
    .line 8345
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 8371
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 8479
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8481
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 8486
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z

    .line 8487
    return-object p0

    .line 8484
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 8516
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8518
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8523
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z

    .line 8524
    return-object p0

    .line 8521
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 8421
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8423
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 8428
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z

    .line 8429
    return-object p0

    .line 8426
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 8474
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z

    .line 8475
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 8476
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 8466
    if-nez p1, :cond_0

    .line 8467
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8469
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z

    .line 8470
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 8471
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 8511
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z

    .line 8512
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8513
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 8503
    if-nez p1, :cond_0

    .line 8504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8506
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z

    .line 8507
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$30302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8508
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8445
    if-nez p1, :cond_0

    .line 8446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8448
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z

    .line 8449
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->token_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 8450
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 8416
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z

    .line 8417
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 8418
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 8408
    if-nez p1, :cond_0

    .line 8409
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8411
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Z)Z

    .line 8412
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;->access$29702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ResetPasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 8413
    return-object p0
.end method
