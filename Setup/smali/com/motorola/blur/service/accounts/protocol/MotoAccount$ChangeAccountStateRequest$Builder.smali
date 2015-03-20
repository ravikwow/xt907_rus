.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4332
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$14800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4327
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14900()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 1

    .prologue
    .line 4327
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4378
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4379
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4382
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 3

    .prologue
    .line 4335
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;-><init>()V

    .line 4336
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    .line 4337
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1

    .prologue
    .line 4370
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4371
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4373
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 3

    .prologue
    .line 4386
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    if-nez v1, :cond_0

    .line 4387
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4390
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    .line 4391
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    .line 4392
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2

    .prologue
    .line 4345
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    if-nez v0, :cond_0

    .line 4346
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4349
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    .line 4350
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2

    .prologue
    .line 4486
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z

    .line 4487
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 4488
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2

    .prologue
    .line 4523
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z

    .line 4524
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4525
    return-object p0
.end method

.method public clearState()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2

    .prologue
    .line 4449
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasState:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z

    .line 4450
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;->ENABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->state_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;

    .line 4451
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2

    .prologue
    .line 4428
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z

    .line 4429
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 4430
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2

    .prologue
    .line 4354
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

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
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 4459
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1

    .prologue
    .line 4363
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4359
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 4496
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;
    .locals 1

    .prologue
    .line 4438
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->getState()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 4401
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 4456
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 4493
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 4435
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasState()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 4398
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4327
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;
    .locals 1

    .prologue
    .line 4341
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4367
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 4475
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4477
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 4482
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z

    .line 4483
    return-object p0

    .line 4480
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 4512
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4514
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4519
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z

    .line 4520
    return-object p0

    .line 4517
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 4417
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4419
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 4424
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z

    .line 4425
    return-object p0

    .line 4422
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 4470
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z

    .line 4471
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 4472
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 4462
    if-nez p1, :cond_0

    .line 4463
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4465
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z

    .line 4466
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 4467
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 4507
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z

    .line 4508
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4509
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 4499
    if-nez p1, :cond_0

    .line 4500
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4502
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z

    .line 4503
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4504
    return-object p0
.end method

.method public setState(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;

    .prologue
    .line 4441
    if-nez p1, :cond_0

    .line 4442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4444
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasState:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z

    .line 4445
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->state_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$AccountState;

    .line 4446
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 4412
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z

    .line 4413
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 4414
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 4404
    if-nez p1, :cond_0

    .line 4405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4407
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Z)Z

    .line 4408
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;->access$15202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeAccountStateRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 4409
    return-object p0
.end method
