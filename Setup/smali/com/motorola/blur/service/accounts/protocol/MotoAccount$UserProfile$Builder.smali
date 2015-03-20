.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13303
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$46600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13298
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$46700()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 1

    .prologue
    .line 13298
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13349
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13350
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 13353
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 3

    .prologue
    .line 13306
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;-><init>()V

    .line 13307
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    .line 13308
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1

    .prologue
    .line 13341
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13342
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 13344
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 3

    .prologue
    .line 13357
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    if-nez v1, :cond_0

    .line 13358
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13361
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    .line 13362
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    .line 13363
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 2

    .prologue
    .line 13316
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    if-nez v0, :cond_0

    .line 13317
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13320
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    .line 13321
    return-object p0
.end method

.method public clearDisplayName()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 2

    .prologue
    .line 13404
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasDisplayName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z

    .line 13405
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->displayName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 13406
    return-object p0
.end method

.method public clearLanguage()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 2

    .prologue
    .line 13425
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasLanguage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z

    .line 13426
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getLanguage()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->language_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 13427
    return-object p0
.end method

.method public clearStatus()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 2

    .prologue
    .line 13467
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z

    .line 13468
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->ENABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->status_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    .line 13469
    return-object p0
.end method

.method public clearUserId()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 2

    .prologue
    .line 13446
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasUserId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z

    .line 13447
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getUserId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->userId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 13448
    return-object p0
.end method

.method public clearUserName()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 2

    .prologue
    .line 13383
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasUserName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$46902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z

    .line 13384
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->userName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 13385
    return-object p0
.end method

.method public clearVerificationStatus()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 2

    .prologue
    .line 13488
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasVerificationStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z

    .line 13489
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->VERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->verificationStatus_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$48002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    .line 13490
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 2

    .prologue
    .line 13325
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

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
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1

    .prologue
    .line 13334
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13330
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13393
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13414
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;
    .locals 1

    .prologue
    .line 13456
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getStatus()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13435
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13372
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerificationStatus()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
    .locals 1

    .prologue
    .line 13477
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getVerificationStatus()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    move-result-object v0

    return-object v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 13390
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasDisplayName()Z

    move-result v0

    return v0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 13411
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasLanguage()Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 13453
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasStatus()Z

    move-result v0

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 13432
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasUserId()Z

    move-result v0

    return v0
.end method

.method public hasUserName()Z
    .locals 1

    .prologue
    .line 13369
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasUserName()Z

    move-result v0

    return v0
.end method

.method public hasVerificationStatus()Z
    .locals 1

    .prologue
    .line 13474
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasVerificationStatus()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 13298
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1

    .prologue
    .line 13312
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 13338
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13396
    if-nez p1, :cond_0

    .line 13397
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13399
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasDisplayName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z

    .line 13400
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->displayName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 13401
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13417
    if-nez p1, :cond_0

    .line 13418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13420
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasLanguage:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z

    .line 13421
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->language_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 13422
    return-object p0
.end method

.method public setStatus(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    .prologue
    .line 13459
    if-nez p1, :cond_0

    .line 13460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13462
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z

    .line 13463
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->status_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    .line 13464
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13438
    if-nez p1, :cond_0

    .line 13439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13441
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasUserId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z

    .line 13442
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->userId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 13443
    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13375
    if-nez p1, :cond_0

    .line 13376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13378
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasUserName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$46902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z

    .line 13379
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->userName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Ljava/lang/String;)Ljava/lang/String;

    .line 13380
    return-object p0
.end method

.method public setVerificationStatus(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    .prologue
    .line 13480
    if-nez p1, :cond_0

    .line 13481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13483
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->hasVerificationStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$47902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Z)Z

    .line 13484
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->verificationStatus_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->access$48002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    .line 13485
    return-object p0
.end method
