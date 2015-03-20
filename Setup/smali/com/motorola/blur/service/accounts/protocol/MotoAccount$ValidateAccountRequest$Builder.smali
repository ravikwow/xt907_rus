.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8934
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$31500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8929
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$31600()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 1

    .prologue
    .line 8929
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8980
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8981
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 8984
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 3

    .prologue
    .line 8937
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;-><init>()V

    .line 8938
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    .line 8939
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1

    .prologue
    .line 8972
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8973
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8975
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 3

    .prologue
    .line 8988
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    if-nez v1, :cond_0

    .line 8989
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8992
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    .line 8993
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    .line 8994
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 2

    .prologue
    .line 8947
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    if-nez v0, :cond_0

    .line 8948
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8951
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    .line 8952
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 2

    .prologue
    .line 9067
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z

    .line 9068
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 9069
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 2

    .prologue
    .line 9104
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z

    .line 9105
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9106
    return-object p0
.end method

.method public clearSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 2

    .prologue
    .line 9030
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$31802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z

    .line 9031
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$31902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 9032
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 2

    .prologue
    .line 8956
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

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
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 9040
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1

    .prologue
    .line 8965
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8961
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 9077
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 9003
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 9037
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 9074
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasSession()Z
    .locals 1

    .prologue
    .line 9000
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasSession()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 8929
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;
    .locals 1

    .prologue
    .line 8943
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 8969
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 9056
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9058
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 9063
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z

    .line 9064
    return-object p0

    .line 9061
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 9093
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9095
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9100
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z

    .line 9101
    return-object p0

    .line 9098
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 9019
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$31900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9021
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$31900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$31902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 9026
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$31802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z

    .line 9027
    return-object p0

    .line 9024
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$31902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 9051
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z

    .line 9052
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 9053
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 9043
    if-nez p1, :cond_0

    .line 9044
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9046
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z

    .line 9047
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 9048
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 9088
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z

    .line 9089
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9090
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 9080
    if-nez p1, :cond_0

    .line 9081
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9083
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z

    .line 9084
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$32302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9085
    return-object p0
.end method

.method public setSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    .prologue
    .line 9014
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$31802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z

    .line 9015
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$31902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 9016
    return-object p0
.end method

.method public setSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 9006
    if-nez p1, :cond_0

    .line 9007
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9009
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$31802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Z)Z

    .line 9010
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;->access$31902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ValidateAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 9011
    return-object p0
.end method
