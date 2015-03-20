.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4151
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$13200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4146
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13300()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .locals 1

    .prologue
    .line 4146
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4197
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4198
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4201
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .locals 3

    .prologue
    .line 4154
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;-><init>()V

    .line 4155
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    .line 4156
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1

    .prologue
    .line 4189
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4190
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4192
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 3

    .prologue
    .line 4205
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    if-nez v1, :cond_0

    .line 4206
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4209
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    .line 4210
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    .line 4211
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .locals 2

    .prologue
    .line 4164
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    if-nez v0, :cond_0

    .line 4165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4168
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    .line 4169
    return-object p0
.end method

.method public clearLogin()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .locals 2

    .prologue
    .line 4252
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->access$13702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Z)Z

    .line 4253
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->getLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->login_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->access$13802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 4254
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .locals 2

    .prologue
    .line 4231
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->access$13502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Z)Z

    .line 4232
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->access$13602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 4233
    return-object p0
.end method

.method public clearPassword()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .locals 2

    .prologue
    .line 4273
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->access$13902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Z)Z

    .line 4274
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->getPassword()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->password_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->access$14002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 4275
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .locals 2

    .prologue
    .line 4173
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

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
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1

    .prologue
    .line 4182
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4178
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4241
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->getLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4220
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4262
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 4238
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 4217
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 4259
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasPassword()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4146
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1

    .prologue
    .line 4160
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4186
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4244
    if-nez p1, :cond_0

    .line 4245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4247
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->access$13702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Z)Z

    .line 4248
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->login_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->access$13802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 4249
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4223
    if-nez p1, :cond_0

    .line 4224
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4226
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->access$13502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Z)Z

    .line 4227
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->access$13602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 4228
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4265
    if-nez p1, :cond_0

    .line 4266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4268
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->access$13902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Z)Z

    .line 4269
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->password_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->access$14002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 4270
    return-object p0
.end method
