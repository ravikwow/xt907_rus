.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7085
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$23400(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7080
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23500()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .locals 1

    .prologue
    .line 7080
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7131
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7132
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 7135
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .locals 3

    .prologue
    .line 7088
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;-><init>()V

    .line 7089
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    .line 7090
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1

    .prologue
    .line 7123
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7124
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7126
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 3

    .prologue
    .line 7139
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    if-nez v1, :cond_0

    .line 7140
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7143
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    .line 7144
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    .line 7145
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .locals 2

    .prologue
    .line 7098
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    if-nez v0, :cond_0

    .line 7099
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7102
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    .line 7103
    return-object p0
.end method

.method public clearData()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .locals 2

    .prologue
    .line 7202
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$23902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Z)Z

    .line 7203
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$24002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .line 7204
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .locals 2

    .prologue
    .line 7165
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$23702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Z)Z

    .line 7166
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$23802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;

    .line 7167
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .locals 2

    .prologue
    .line 7107
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

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
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    .locals 1

    .prologue
    .line 7175
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->getData()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1

    .prologue
    .line 7116
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7112
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;
    .locals 1

    .prologue
    .line 7154
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 7172
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 7151
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 7080
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;
    .locals 1

    .prologue
    .line 7094
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7120
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeData(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .prologue
    .line 7191
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$24000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7193
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$24000(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$24002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .line 7198
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$23902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Z)Z

    .line 7199
    return-object p0

    .line 7196
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$24002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    goto :goto_0
.end method

.method public setData(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;

    .prologue
    .line 7186
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$23902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Z)Z

    .line 7187
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$24002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .line 7188
    return-object p0
.end method

.method public setData(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .prologue
    .line 7178
    if-nez p1, :cond_0

    .line 7179
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7181
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$23902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Z)Z

    .line 7182
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->data_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$24002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Data;

    .line 7183
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;

    .prologue
    .line 7157
    if-nez p1, :cond_0

    .line 7158
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7160
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$23702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Z)Z

    .line 7161
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;->access$23802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$TakeAccountResponse$Error;

    .line 7162
    return-object p0
.end method
