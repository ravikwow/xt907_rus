.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1338
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1333
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 1

    .prologue
    .line 1333
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1388
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 3

    .prologue
    .line 1341
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;-><init>()V

    .line 1342
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    .line 1343
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1379
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 3

    .prologue
    .line 1392
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    if-nez v1, :cond_0

    .line 1393
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1396
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    .line 1397
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    .line 1398
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 2

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    if-nez v0, :cond_0

    .line 1352
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1355
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    .line 1356
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 2

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Z)Z

    .line 1419
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 1420
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 2

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Z)Z

    .line 1456
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1457
    return-object p0
.end method

.method public clearVerificationStatus()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 2

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasVerificationStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Z)Z

    .line 1477
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->VERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->verificationStatus_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    .line 1478
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 2

    .prologue
    .line 1360
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

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
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1

    .prologue
    .line 1369
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1365
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVerificationStatus()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->getVerificationStatus()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasVerificationStatus()Z
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasVerificationStatus()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1446
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1451
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Z)Z

    .line 1452
    return-object p0

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 1410
    if-nez p1, :cond_0

    .line 1411
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Z)Z

    .line 1414
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 1415
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Z)Z

    .line 1440
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1441
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 1431
    if-nez p1, :cond_0

    .line 1432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Z)Z

    .line 1435
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1436
    return-object p0
.end method

.method public setVerificationStatus(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    .prologue
    .line 1468
    if-nez p1, :cond_0

    .line 1469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->hasVerificationStatus:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Z)Z

    .line 1472
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->verificationStatus_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;->access$4702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    .line 1473
    return-object p0
.end method
