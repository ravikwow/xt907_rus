.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10805
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$37900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10800
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$38000()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 1

    .prologue
    .line 10800
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10851
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10852
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 10855
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 3

    .prologue
    .line 10808
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;-><init>()V

    .line 10809
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    .line 10810
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1

    .prologue
    .line 10843
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10844
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 10846
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 3

    .prologue
    .line 10859
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    if-nez v1, :cond_0

    .line 10860
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10863
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    .line 10864
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    .line 10865
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2

    .prologue
    .line 10818
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    if-nez v0, :cond_0

    .line 10819
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10822
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    .line 10823
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2

    .prologue
    .line 10901
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 10902
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 10903
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2

    .prologue
    .line 10938
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 10939
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10940
    return-object p0
.end method

.method public clearToken()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2

    .prologue
    .line 10959
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 10960
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->getToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->token_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 10961
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2

    .prologue
    .line 10980
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 10981
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->CREATE_ACCOUNT:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->type_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    .line 10982
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2

    .prologue
    .line 11017
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$39002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 11018
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$39102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 11019
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2

    .prologue
    .line 10827
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

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
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 10874
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1

    .prologue
    .line 10836
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10832
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 10911
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10948
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;
    .locals 1

    .prologue
    .line 10969
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->getType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 10990
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 10871
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 10908
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 10945
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasToken()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 10966
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 10987
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 10800
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
    .locals 1

    .prologue
    .line 10814
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 10840
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 10890
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10892
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 10897
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 10898
    return-object p0

    .line 10895
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 10927
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10929
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10934
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 10935
    return-object p0

    .line 10932
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 11006
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$39100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11008
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$39100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$39102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 11013
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$39002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 11014
    return-object p0

    .line 11011
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$39102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 10885
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 10886
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 10887
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 10877
    if-nez p1, :cond_0

    .line 10878
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10880
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 10881
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 10882
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 10922
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 10923
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10924
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 10914
    if-nez p1, :cond_0

    .line 10915
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10917
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 10918
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 10919
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10951
    if-nez p1, :cond_0

    .line 10952
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10954
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 10955
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->token_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 10956
    return-object p0
.end method

.method public setType(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    .prologue
    .line 10972
    if-nez p1, :cond_0

    .line 10973
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10975
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 10976
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->type_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$38902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    .line 10977
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 11001
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$39002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 11002
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$39102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 11003
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 10993
    if-nez p1, :cond_0

    .line 10994
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10996
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$39002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Z)Z

    .line 10997
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->access$39102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 10998
    return-object p0
.end method
