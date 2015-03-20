.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9518
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$33500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9513
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$33600()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 1

    .prologue
    .line 9513
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9564
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9565
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 9568
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 3

    .prologue
    .line 9521
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;-><init>()V

    .line 9522
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    .line 9523
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1

    .prologue
    .line 9556
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9557
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 9559
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 3

    .prologue
    .line 9572
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    if-nez v1, :cond_0

    .line 9573
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9576
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    .line 9577
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    .line 9578
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2

    .prologue
    .line 9531
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    if-nez v0, :cond_0

    .line 9532
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9535
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    .line 9536
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2

    .prologue
    .line 9651
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z

    .line 9652
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 9653
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2

    .prologue
    .line 9709
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z

    .line 9710
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9711
    return-object p0
.end method

.method public clearToken()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2

    .prologue
    .line 9672
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z

    .line 9673
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->getToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->token_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 9674
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2

    .prologue
    .line 9614
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$33802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z

    .line 9615
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$33902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 9616
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2

    .prologue
    .line 9540
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

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
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 9624
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1

    .prologue
    .line 9549
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9545
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 9682
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9661
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 9587
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 9621
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 9679
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 9658
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasToken()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 9584
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 9513
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;
    .locals 1

    .prologue
    .line 9527
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 9553
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 9640
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9642
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 9647
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z

    .line 9648
    return-object p0

    .line 9645
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 9698
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9700
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9705
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z

    .line 9706
    return-object p0

    .line 9703
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 9603
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$33900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9605
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$33900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$33902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 9610
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$33802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z

    .line 9611
    return-object p0

    .line 9608
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$33902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 9635
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z

    .line 9636
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 9637
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 9627
    if-nez p1, :cond_0

    .line 9628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9630
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z

    .line 9631
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 9632
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 9693
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z

    .line 9694
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9695
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 9685
    if-nez p1, :cond_0

    .line 9686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9688
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z

    .line 9689
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9690
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9664
    if-nez p1, :cond_0

    .line 9665
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9667
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z

    .line 9668
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->token_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$34302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 9669
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 9598
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$33802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z

    .line 9599
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$33902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 9600
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 9590
    if-nez p1, :cond_0

    .line 9591
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9593
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$33802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Z)Z

    .line 9594
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;->access$33902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 9595
    return-object p0
.end method
