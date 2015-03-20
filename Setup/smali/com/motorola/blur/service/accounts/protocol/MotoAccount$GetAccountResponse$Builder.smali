.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3950
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$13700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3945
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13800()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 1

    .prologue
    .line 3945
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3996
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3997
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4000
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 3

    .prologue
    .line 3953
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;-><init>()V

    .line 3954
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    .line 3955
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1

    .prologue
    .line 3988
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3989
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3991
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 3

    .prologue
    .line 4004
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    if-nez v1, :cond_0

    .line 4005
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4008
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    .line 4009
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    .line 4010
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 2

    .prologue
    .line 3963
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    if-nez v0, :cond_0

    .line 3964
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3967
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    .line 3968
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 2

    .prologue
    .line 4030
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Z)Z

    .line 4031
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 4032
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 2

    .prologue
    .line 4104
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Z)Z

    .line 4105
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4106
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 2

    .prologue
    .line 4067
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Z)Z

    .line 4068
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 4069
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 2

    .prologue
    .line 3972
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

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
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1

    .prologue
    .line 3981
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3977
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 4019
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 4077
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 4040
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 4016
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 4074
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 4037
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;
    .locals 1

    .prologue
    .line 3959
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3985
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 4093
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4095
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4100
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Z)Z

    .line 4101
    return-object p0

    .line 4098
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 4056
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4058
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 4063
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Z)Z

    .line 4064
    return-object p0

    .line 4061
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 4022
    if-nez p1, :cond_0

    .line 4023
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4025
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Z)Z

    .line 4026
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 4027
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 4088
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Z)Z

    .line 4089
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4090
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 4080
    if-nez p1, :cond_0

    .line 4081
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4083
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Z)Z

    .line 4084
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 4085
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Z)Z

    .line 4052
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 4053
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 4043
    if-nez p1, :cond_0

    .line 4044
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4046
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Z)Z

    .line 4047
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;->access$14302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 4048
    return-object p0
.end method
