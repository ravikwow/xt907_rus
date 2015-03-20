.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2987
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$10000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2982
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10100()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 1

    .prologue
    .line 2982
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3033
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3034
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3037
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 3

    .prologue
    .line 2990
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;-><init>()V

    .line 2991
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    .line 2992
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1

    .prologue
    .line 3025
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3026
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3028
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 3

    .prologue
    .line 3041
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    if-nez v1, :cond_0

    .line 3042
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3045
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    .line 3046
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    .line 3047
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 2

    .prologue
    .line 3000
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    if-nez v0, :cond_0

    .line 3001
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3004
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    .line 3005
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 2

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z

    .line 3121
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 3122
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 2

    .prologue
    .line 3157
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z

    .line 3158
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3159
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 2

    .prologue
    .line 3083
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z

    .line 3084
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 3085
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 2

    .prologue
    .line 3009
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

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
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1

    .prologue
    .line 3018
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3014
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 3056
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 3090
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 3053
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2982
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;
    .locals 1

    .prologue
    .line 2996
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3022
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 3109
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3111
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 3116
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z

    .line 3117
    return-object p0

    .line 3114
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 3146
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3148
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3153
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z

    .line 3154
    return-object p0

    .line 3151
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 3072
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3074
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 3079
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z

    .line 3080
    return-object p0

    .line 3077
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z

    .line 3105
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 3106
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 3096
    if-nez p1, :cond_0

    .line 3097
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3099
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z

    .line 3100
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 3101
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 3141
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z

    .line 3142
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3143
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 3133
    if-nez p1, :cond_0

    .line 3134
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3136
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z

    .line 3137
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3138
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 3067
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z

    .line 3068
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 3069
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 3059
    if-nez p1, :cond_0

    .line 3060
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3062
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Z)Z

    .line 3063
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;->access$10402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UpdateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 3064
    return-object p0
.end method
