.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1014
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1060
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1064
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;
    .locals 3

    .prologue
    .line 1017
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;-><init>()V

    .line 1018
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    .line 1019
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1055
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;
    .locals 3

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    if-nez v1, :cond_0

    .line 1069
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    .line 1073
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    .line 1074
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    if-nez v0, :cond_0

    .line 1028
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    .line 1032
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->access$3602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;Z)Z

    .line 1113
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->access$3702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;

    .line 1114
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1091
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->access$3402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;Z)Z

    .line 1092
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->access$3502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;I)I

    .line 1093
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;
    .locals 2

    .prologue
    .line 1036
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;

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
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;
    .locals 1

    .prologue
    .line 1045
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1041
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;

    .prologue
    .line 1104
    if-nez p1, :cond_0

    .line 1105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->access$3602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;Z)Z

    .line 1108
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->access$3702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Error;

    .line 1109
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->access$3402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;Z)Z

    .line 1087
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;->access$3502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$NewNameResponse;I)I

    .line 1088
    return-object p0
.end method
