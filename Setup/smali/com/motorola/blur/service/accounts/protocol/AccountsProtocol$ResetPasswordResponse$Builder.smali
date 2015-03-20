.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1323
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 1318
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1373
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    .locals 3

    .prologue
    .line 1326
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;-><init>()V

    .line 1327
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    .line 1328
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1364
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 3

    .prologue
    .line 1377
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    if-nez v1, :cond_0

    .line 1378
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    .line 1382
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    .line 1383
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    if-nez v0, :cond_0

    .line 1337
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1340
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    .line 1341
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->access$4502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;Z)Z

    .line 1422
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->access$4602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    .line 1423
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1400
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->access$4302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;Z)Z

    .line 1401
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->access$4402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;I)I

    .line 1402
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 1345
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

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
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1

    .prologue
    .line 1354
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1350
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    .prologue
    .line 1413
    if-nez p1, :cond_0

    .line 1414
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->access$4502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;Z)Z

    .line 1417
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->access$4602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Error;

    .line 1418
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->access$4302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;Z)Z

    .line 1396
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;->access$4402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetPasswordResponse;I)I

    .line 1397
    return-object p0
.end method
