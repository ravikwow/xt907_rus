.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6448
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$22600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6443
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22700()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 1

    .prologue
    .line 6443
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6494
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6495
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6498
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 3

    .prologue
    .line 6451
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;-><init>()V

    .line 6452
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    .line 6453
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1

    .prologue
    .line 6486
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6487
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6489
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 3

    .prologue
    .line 6502
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    if-nez v1, :cond_0

    .line 6503
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6506
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    .line 6507
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    .line 6508
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2

    .prologue
    .line 6461
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    if-nez v0, :cond_0

    .line 6462
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6465
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    .line 6466
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2

    .prologue
    .line 6602
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z

    .line 6603
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 6604
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2

    .prologue
    .line 6639
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z

    .line 6640
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6641
    return-object p0
.end method

.method public clearNewLogin()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2

    .prologue
    .line 6565
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasNewLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z

    .line 6566
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->getNewLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newLogin_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 6567
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2

    .prologue
    .line 6544
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$22902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z

    .line 6545
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 6546
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2

    .prologue
    .line 6470
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

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
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 6575
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1

    .prologue
    .line 6479
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6475
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 6612
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNewLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6554
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->getNewLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 6517
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 6572
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 6609
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasNewLogin()Z
    .locals 1

    .prologue
    .line 6551
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasNewLogin()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 6514
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 6443
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;
    .locals 1

    .prologue
    .line 6457
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6483
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 6591
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6593
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 6598
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z

    .line 6599
    return-object p0

    .line 6596
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 6628
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6630
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6635
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z

    .line 6636
    return-object p0

    .line 6633
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 6533
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6535
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 6540
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$22902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z

    .line 6541
    return-object p0

    .line 6538
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 6586
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z

    .line 6587
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 6588
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 6578
    if-nez p1, :cond_0

    .line 6579
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6581
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z

    .line 6582
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 6583
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 6623
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z

    .line 6624
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6625
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 6615
    if-nez p1, :cond_0

    .line 6616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6618
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z

    .line 6619
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6620
    return-object p0
.end method

.method public setNewLogin(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6557
    if-nez p1, :cond_0

    .line 6558
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6560
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasNewLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z

    .line 6561
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->newLogin_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 6562
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 6528
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$22902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z

    .line 6529
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 6530
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 6520
    if-nez p1, :cond_0

    .line 6521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6523
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$22902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Z)Z

    .line 6524
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;->access$23002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangeLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 6525
    return-object p0
.end method
