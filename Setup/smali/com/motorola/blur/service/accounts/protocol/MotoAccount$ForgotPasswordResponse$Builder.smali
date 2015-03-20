.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8063
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$28400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8058
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$28500()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .locals 1

    .prologue
    .line 8058
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8109
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8110
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 8113
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .locals 3

    .prologue
    .line 8066
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;-><init>()V

    .line 8067
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    .line 8068
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1

    .prologue
    .line 8101
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8102
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8104
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 3

    .prologue
    .line 8117
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    if-nez v1, :cond_0

    .line 8118
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8121
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    .line 8122
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    .line 8123
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 8076
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    if-nez v0, :cond_0

    .line 8077
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8080
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    .line 8081
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 8143
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$28702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Z)Z

    .line 8144
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$28802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 8145
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 8180
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$28902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Z)Z

    .line 8181
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$29002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8182
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .locals 2

    .prologue
    .line 8085
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

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
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1

    .prologue
    .line 8094
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8090
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 8132
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 8153
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 8129
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 8150
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 8058
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;
    .locals 1

    .prologue
    .line 8072
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 8098
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 8169
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$29000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8171
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$29000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$29002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8176
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$28902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Z)Z

    .line 8177
    return-object p0

    .line 8174
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$29002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 8135
    if-nez p1, :cond_0

    .line 8136
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8138
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$28702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Z)Z

    .line 8139
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$28802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 8140
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 8164
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$28902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Z)Z

    .line 8165
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$29002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8166
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 8156
    if-nez p1, :cond_0

    .line 8157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8159
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$28902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Z)Z

    .line 8160
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;->access$29002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ForgotPasswordResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 8161
    return-object p0
.end method
