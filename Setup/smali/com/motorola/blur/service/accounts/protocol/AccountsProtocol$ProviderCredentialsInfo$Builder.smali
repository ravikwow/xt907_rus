.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5022
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$16100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5017
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16200()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .locals 1

    .prologue
    .line 5017
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5068
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5069
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5072
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .locals 3

    .prologue
    .line 5025
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;-><init>()V

    .line 5026
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    .line 5027
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1

    .prologue
    .line 5060
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5061
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5063
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 3

    .prologue
    .line 5076
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    if-nez v1, :cond_0

    .line 5077
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5080
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    .line 5081
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    .line 5082
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .locals 2

    .prologue
    .line 5035
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    if-nez v0, :cond_0

    .line 5036
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5039
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    .line 5040
    return-object p0
.end method

.method public clearLogin()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .locals 2

    .prologue
    .line 5123
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->access$16602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Z)Z

    .line 5124
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->login_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->access$16702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 5125
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .locals 2

    .prologue
    .line 5102
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->access$16402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Z)Z

    .line 5103
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->access$16502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 5104
    return-object p0
.end method

.method public clearPassword()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .locals 2

    .prologue
    .line 5144
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->access$16802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Z)Z

    .line 5145
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getPassword()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->password_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->access$16902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 5146
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .locals 2

    .prologue
    .line 5044
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

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
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1

    .prologue
    .line 5053
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5049
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5112
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5091
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5133
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 5109
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 5088
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 5130
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasPassword()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1

    .prologue
    .line 5031
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5057
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5115
    if-nez p1, :cond_0

    .line 5116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5118
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->access$16602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Z)Z

    .line 5119
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->login_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->access$16702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 5120
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5094
    if-nez p1, :cond_0

    .line 5095
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5097
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->access$16402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Z)Z

    .line 5098
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->access$16502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 5099
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5136
    if-nez p1, :cond_0

    .line 5137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5139
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->access$16802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Z)Z

    .line 5140
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->password_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->access$16902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 5141
    return-object p0
.end method
