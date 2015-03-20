.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6175
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$21700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6170
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21800()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .locals 1

    .prologue
    .line 6170
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6221
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6222
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 6225
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .locals 3

    .prologue
    .line 6178
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;-><init>()V

    .line 6179
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    .line 6180
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1

    .prologue
    .line 6213
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6214
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6216
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 3

    .prologue
    .line 6229
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    if-nez v1, :cond_0

    .line 6230
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6233
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    .line 6234
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    .line 6235
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .locals 2

    .prologue
    .line 6188
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    if-nez v0, :cond_0

    .line 6189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6192
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    .line 6193
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .locals 2

    .prologue
    .line 6255
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Z)Z

    .line 6256
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 6257
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .locals 2

    .prologue
    .line 6292
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Z)Z

    .line 6293
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6294
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .locals 2

    .prologue
    .line 6197
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

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
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1

    .prologue
    .line 6206
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6202
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 6244
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 6265
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 6241
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 6262
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 6170
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;
    .locals 1

    .prologue
    .line 6184
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6210
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 6281
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6283
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6288
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Z)Z

    .line 6289
    return-object p0

    .line 6286
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 6247
    if-nez p1, :cond_0

    .line 6248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6250
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Z)Z

    .line 6251
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 6252
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 6276
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Z)Z

    .line 6277
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6278
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 6268
    if-nez p1, :cond_0

    .line 6269
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6271
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Z)Z

    .line 6272
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;->access$22302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6273
    return-object p0
.end method
