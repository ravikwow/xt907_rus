.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2542
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$8200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2537
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8300()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
    .locals 1

    .prologue
    .line 2537
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2588
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2589
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2592
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
    .locals 3

    .prologue
    .line 2545
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;-><init>()V

    .line 2546
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    .line 2547
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;
    .locals 1

    .prologue
    .line 2580
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2581
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2583
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;
    .locals 3

    .prologue
    .line 2596
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    if-nez v1, :cond_0

    .line 2597
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2600
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    .line 2601
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    .line 2602
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
    .locals 2

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    if-nez v0, :cond_0

    .line 2556
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2559
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    .line 2560
    return-object p0
.end method

.method public clearData()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
    .locals 2

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$8902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Z)Z

    .line 2678
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$9002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    .line 2679
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
    .locals 2

    .prologue
    .line 2640
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$8702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Z)Z

    .line 2641
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;->ACCOUNT_EXISTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$8802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;

    .line 2642
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2619
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$8502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Z)Z

    .line 2620
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$8602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;I)I

    .line 2621
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
    .locals 2

    .prologue
    .line 2564
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;

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
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    .locals 1

    .prologue
    .line 2650
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->getData()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;
    .locals 1

    .prologue
    .line 2573
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2569
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;
    .locals 1

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 2611
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;
    .locals 1

    .prologue
    .line 2551
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeData(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$9000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2668
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$9000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$9002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    .line 2673
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$8902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Z)Z

    .line 2674
    return-object p0

    .line 2671
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$9002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    goto :goto_0
.end method

.method public setData(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$8902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Z)Z

    .line 2662
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$9002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    .line 2663
    return-object p0
.end method

.method public setData(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    .prologue
    .line 2653
    if-nez p1, :cond_0

    .line 2654
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2656
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$8902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Z)Z

    .line 2657
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$9002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Data;

    .line 2658
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;

    .prologue
    .line 2632
    if-nez p1, :cond_0

    .line 2633
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2635
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$8702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Z)Z

    .line 2636
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$8802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Error;

    .line 2637
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$8502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;Z)Z

    .line 2615
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;->access$8602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewOAUTHAccountResponse;I)I

    .line 2616
    return-object p0
.end method
