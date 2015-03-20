.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2054
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2049
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .locals 1

    .prologue
    .line 2049
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2100
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2104
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .locals 3

    .prologue
    .line 2057
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;-><init>()V

    .line 2058
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    .line 2059
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2093
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2095
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 3

    .prologue
    .line 2108
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    if-nez v1, :cond_0

    .line 2109
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2112
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    .line 2113
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    .line 2114
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .locals 2

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    if-nez v0, :cond_0

    .line 2068
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2071
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    .line 2072
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .locals 2

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Z)Z

    .line 2135
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 2136
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .locals 2

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Z)Z

    .line 2172
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2173
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .locals 2

    .prologue
    .line 2076
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

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
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1

    .prologue
    .line 2085
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2081
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;
    .locals 1

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2162
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2167
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Z)Z

    .line 2168
    return-object p0

    .line 2165
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 2126
    if-nez p1, :cond_0

    .line 2127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2129
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Z)Z

    .line 2130
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 2131
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Z)Z

    .line 2156
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2157
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 2147
    if-nez p1, :cond_0

    .line 2148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2150
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Z)Z

    .line 2151
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;->access$7302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2152
    return-object p0
.end method
