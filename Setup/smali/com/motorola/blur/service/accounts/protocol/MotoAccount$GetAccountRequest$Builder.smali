.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3584
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$12000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3579
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12100()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 1

    .prologue
    .line 3579
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3630
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3631
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3634
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 3

    .prologue
    .line 3587
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;-><init>()V

    .line 3588
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    .line 3589
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1

    .prologue
    .line 3622
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3623
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3625
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 3

    .prologue
    .line 3638
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    if-nez v1, :cond_0

    .line 3639
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3642
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    .line 3643
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    .line 3644
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2

    .prologue
    .line 3597
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    if-nez v0, :cond_0

    .line 3598
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3601
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    .line 3602
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2

    .prologue
    .line 3764
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3765
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 3766
    return-object p0
.end method

.method public clearAuthToken()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2

    .prologue
    .line 3727
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasAuthToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$12902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3728
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->authToken_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 3729
    return-object p0
.end method

.method public clearLogin()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2

    .prologue
    .line 3664
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$12302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3665
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->login_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$12402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 3666
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2

    .prologue
    .line 3801
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3802
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3803
    return-object p0
.end method

.method public clearPassword()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2

    .prologue
    .line 3685
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$12502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3686
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getPassword()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->password_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$12602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 3687
    return-object p0
.end method

.method public clearUserId()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2

    .prologue
    .line 3706
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasUserId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$12702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3707
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->userId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$12802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 3708
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2

    .prologue
    .line 3606
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

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
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 3737
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3716
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1

    .prologue
    .line 3615
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3611
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3653
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 3774
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3674
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3695
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 3734
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 3713
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasAuthToken()Z

    move-result v0

    return v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 3650
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 3771
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 3671
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasPassword()Z

    move-result v0

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 3692
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasUserId()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3579
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;
    .locals 1

    .prologue
    .line 3593
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3619
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 3753
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3755
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 3760
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3761
    return-object p0

    .line 3758
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 3790
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3792
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3797
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3798
    return-object p0

    .line 3795
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 3748
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3749
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 3750
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 3740
    if-nez p1, :cond_0

    .line 3741
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3743
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3744
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 3745
    return-object p0
.end method

.method public setAuthToken(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3719
    if-nez p1, :cond_0

    .line 3720
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3722
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasAuthToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$12902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3723
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->authToken_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 3724
    return-object p0
.end method

.method public setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3656
    if-nez p1, :cond_0

    .line 3657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3659
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$12302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3660
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->login_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$12402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 3661
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 3785
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3786
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3787
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 3777
    if-nez p1, :cond_0

    .line 3778
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3780
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3781
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$13402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 3782
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3677
    if-nez p1, :cond_0

    .line 3678
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3680
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$12502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3681
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->password_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$12602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 3682
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3698
    if-nez p1, :cond_0

    .line 3699
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3701
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->hasUserId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$12702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Z)Z

    .line 3702
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->userId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;->access$12802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 3703
    return-object p0
.end method
