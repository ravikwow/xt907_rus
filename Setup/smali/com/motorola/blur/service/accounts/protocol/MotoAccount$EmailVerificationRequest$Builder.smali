.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10123
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$35700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10118
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$35800()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 1

    .prologue
    .line 10118
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10169
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10170
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 10173
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 3

    .prologue
    .line 10126
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;-><init>()V

    .line 10127
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    .line 10128
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1

    .prologue
    .line 10161
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10162
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 10164
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 3

    .prologue
    .line 10177
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    if-nez v1, :cond_0

    .line 10178
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10181
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    .line 10182
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    .line 10183
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2

    .prologue
    .line 10136
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    if-nez v0, :cond_0

    .line 10137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10140
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    .line 10141
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2

    .prologue
    .line 10256
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z

    .line 10257
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 10258
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2

    .prologue
    .line 10314
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z

    .line 10315
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10316
    return-object p0
.end method

.method public clearToken()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2

    .prologue
    .line 10277
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z

    .line 10278
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->getToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->token_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 10279
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2

    .prologue
    .line 10219
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z

    .line 10220
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 10221
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2

    .prologue
    .line 10145
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

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
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 10229
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1

    .prologue
    .line 10154
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10150
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 10287
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10266
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 10192
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 10226
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 10284
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 10263
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasToken()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 10189
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 10118
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;
    .locals 1

    .prologue
    .line 10132
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 10158
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 10245
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10247
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 10252
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z

    .line 10253
    return-object p0

    .line 10250
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 10303
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10305
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10310
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z

    .line 10311
    return-object p0

    .line 10308
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 10208
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10210
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 10215
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z

    .line 10216
    return-object p0

    .line 10213
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 10240
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z

    .line 10241
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 10242
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 10232
    if-nez p1, :cond_0

    .line 10233
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10235
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z

    .line 10236
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 10237
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 10298
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z

    .line 10299
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10300
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 10290
    if-nez p1, :cond_0

    .line 10291
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10293
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z

    .line 10294
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10295
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10269
    if-nez p1, :cond_0

    .line 10270
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10272
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z

    .line 10273
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->token_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 10274
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 10203
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z

    .line 10204
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 10205
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 10195
    if-nez p1, :cond_0

    .line 10196
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10198
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Z)Z

    .line 10199
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;->access$36102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$EmailVerificationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 10200
    return-object p0
.end method
