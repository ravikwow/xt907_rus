.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7348
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$24300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7343
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24400()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .locals 1

    .prologue
    .line 7343
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7394
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7395
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 7398
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .locals 3

    .prologue
    .line 7351
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;-><init>()V

    .line 7352
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    .line 7353
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1

    .prologue
    .line 7386
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7387
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7389
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 3

    .prologue
    .line 7402
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    if-nez v1, :cond_0

    .line 7403
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7406
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    .line 7407
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    .line 7408
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .locals 2

    .prologue
    .line 7361
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    if-nez v0, :cond_0

    .line 7362
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7365
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    .line 7366
    return-object p0
.end method

.method public clearLogin()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .locals 2

    .prologue
    .line 7449
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->access$24802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Z)Z

    .line 7450
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->getLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->login_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->access$24902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 7451
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .locals 2

    .prologue
    .line 7428
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->access$24602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Z)Z

    .line 7429
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->access$24702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 7430
    return-object p0
.end method

.method public clearPassword()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .locals 2

    .prologue
    .line 7470
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->access$25002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Z)Z

    .line 7471
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->getPassword()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->password_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->access$25102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 7472
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .locals 2

    .prologue
    .line 7370
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

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
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1

    .prologue
    .line 7379
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7375
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7438
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->getLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7417
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7459
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 7435
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 7414
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 7456
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasPassword()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 7343
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1

    .prologue
    .line 7357
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7383
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7441
    if-nez p1, :cond_0

    .line 7442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7444
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->access$24802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Z)Z

    .line 7445
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->login_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->access$24902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 7446
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7420
    if-nez p1, :cond_0

    .line 7421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7423
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->access$24602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Z)Z

    .line 7424
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->access$24702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 7425
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7462
    if-nez p1, :cond_0

    .line 7463
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7465
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->access$25002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Z)Z

    .line 7466
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->password_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->access$25102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 7467
    return-object p0
.end method
