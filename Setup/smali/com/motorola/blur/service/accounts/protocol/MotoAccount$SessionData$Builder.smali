.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14621
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$52400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14616
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$52500()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 1

    .prologue
    .line 14616
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14667
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14668
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 14671
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 3

    .prologue
    .line 14624
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;-><init>()V

    .line 14625
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 14626
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 14659
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14660
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 14662
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 3

    .prologue
    .line 14675
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    if-nez v1, :cond_0

    .line 14676
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14679
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 14680
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 14681
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 2

    .prologue
    .line 14634
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    if-nez v0, :cond_0

    .line 14635
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14638
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 14639
    return-object p0
.end method

.method public clearAuthToken()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 2

    .prologue
    .line 14722
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasAuthToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$52902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Z)Z

    .line 14723
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->authToken_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$53002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Ljava/lang/String;)Ljava/lang/String;

    .line 14724
    return-object p0
.end method

.method public clearUserId()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 2

    .prologue
    .line 14701
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasUserId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$52702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Z)Z

    .line 14702
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getUserId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$52802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Ljava/lang/String;)Ljava/lang/String;

    .line 14703
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 2

    .prologue
    .line 14759
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$53102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Z)Z

    .line 14760
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$53202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 14761
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 2

    .prologue
    .line 14643
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

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
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14711
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 14652
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14648
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14690
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 14732
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 14708
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasAuthToken()Z

    move-result v0

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 14687
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasUserId()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 14729
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 14616
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 14630
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 14656
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 14748
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$53200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14750
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$53200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$53202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 14755
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$53102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Z)Z

    .line 14756
    return-object p0

    .line 14753
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$53202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setAuthToken(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14714
    if-nez p1, :cond_0

    .line 14715
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14717
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasAuthToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$52902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Z)Z

    .line 14718
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->authToken_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$53002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Ljava/lang/String;)Ljava/lang/String;

    .line 14719
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14693
    if-nez p1, :cond_0

    .line 14694
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14696
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasUserId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$52702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Z)Z

    .line 14697
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$52802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Ljava/lang/String;)Ljava/lang/String;

    .line 14698
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 14743
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$53102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Z)Z

    .line 14744
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$53202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 14745
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 14735
    if-nez p1, :cond_0

    .line 14736
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14738
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$53102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Z)Z

    .line 14739
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->access$53202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 14740
    return-object p0
.end method
