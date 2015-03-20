.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8420
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$27700(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8415
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27800()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .locals 1

    .prologue
    .line 8415
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8466
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8467
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 8470
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .locals 3

    .prologue
    .line 8423
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;-><init>()V

    .line 8424
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    .line 8425
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1

    .prologue
    .line 8458
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8459
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8461
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 3

    .prologue
    .line 8474
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    if-nez v1, :cond_0

    .line 8475
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8478
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    .line 8479
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    .line 8480
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .locals 2

    .prologue
    .line 8433
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    if-nez v0, :cond_0

    .line 8434
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8437
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    .line 8438
    return-object p0
.end method

.method public clearLogin()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .locals 2

    .prologue
    .line 8521
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->access$28202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Z)Z

    .line 8522
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->getLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->login_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->access$28302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 8523
    return-object p0
.end method

.method public clearName()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .locals 2

    .prologue
    .line 8500
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->access$28002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Z)Z

    .line 8501
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->access$28102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 8502
    return-object p0
.end method

.method public clearPassword()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .locals 2

    .prologue
    .line 8542
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->access$28402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Z)Z

    .line 8543
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->getPassword()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->password_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->access$28502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 8544
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .locals 2

    .prologue
    .line 8442
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

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
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1

    .prologue
    .line 8451
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8447
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8510
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->getLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8489
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8531
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 8507
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 8486
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 8528
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasPassword()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 8415
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1

    .prologue
    .line 8429
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 8455
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8513
    if-nez p1, :cond_0

    .line 8514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8516
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->access$28202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Z)Z

    .line 8517
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->login_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->access$28302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 8518
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8492
    if-nez p1, :cond_0

    .line 8493
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8495
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->access$28002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Z)Z

    .line 8496
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->access$28102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 8497
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8534
    if-nez p1, :cond_0

    .line 8535
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8537
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->access$28402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Z)Z

    .line 8538
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->password_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->access$28502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 8539
    return-object p0
.end method
