.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7891
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$26100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7886
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26200()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;
    .locals 1

    .prologue
    .line 7886
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7937
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7938
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 7941
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;
    .locals 3

    .prologue
    .line 7894
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;-><init>()V

    .line 7895
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    .line 7896
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;
    .locals 1

    .prologue
    .line 7929
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7930
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7932
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;
    .locals 3

    .prologue
    .line 7945
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    if-nez v1, :cond_0

    .line 7946
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7949
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    .line 7950
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    .line 7951
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;
    .locals 2

    .prologue
    .line 7904
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    if-nez v0, :cond_0

    .line 7905
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7908
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    .line 7909
    return-object p0
.end method

.method public clearLogin()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;
    .locals 2

    .prologue
    .line 7971
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->access$26402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;Z)Z

    .line 7972
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->getLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->login_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->access$26502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 7973
    return-object p0
.end method

.method public clearNonce()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;
    .locals 2

    .prologue
    .line 7992
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->hasNonce:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->access$26602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;Z)Z

    .line 7993
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->getNonce()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->nonce_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->access$26702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 7994
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;
    .locals 2

    .prologue
    .line 7913
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;

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
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;
    .locals 1

    .prologue
    .line 7922
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7918
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7960
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->getLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7981
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->getNonce()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 7957
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasNonce()Z
    .locals 1

    .prologue
    .line 7978
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->hasNonce()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 7886
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;
    .locals 1

    .prologue
    .line 7900
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7926
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7963
    if-nez p1, :cond_0

    .line 7964
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7966
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->access$26402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;Z)Z

    .line 7967
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->login_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->access$26502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 7968
    return-object p0
.end method

.method public setNonce(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7984
    if-nez p1, :cond_0

    .line 7985
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7987
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->hasNonce:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->access$26602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;Z)Z

    .line 7988
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->nonce_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;->access$26702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateNonceRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 7989
    return-object p0
.end method
