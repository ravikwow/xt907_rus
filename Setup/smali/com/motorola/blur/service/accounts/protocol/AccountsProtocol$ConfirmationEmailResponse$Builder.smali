.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3925
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$12500(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3920
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12600()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    .locals 1

    .prologue
    .line 3920
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3971
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3972
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3975
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    .locals 3

    .prologue
    .line 3928
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;-><init>()V

    .line 3929
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    .line 3930
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1

    .prologue
    .line 3963
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3964
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3966
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 3

    .prologue
    .line 3979
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    if-nez v1, :cond_0

    .line 3980
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3983
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    .line 3984
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    .line 3985
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    .locals 2

    .prologue
    .line 3938
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    if-nez v0, :cond_0

    .line 3939
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3942
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    .line 3943
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    .locals 2

    .prologue
    .line 4005
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->access$12802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;Z)Z

    .line 4006
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->access$12902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;

    .line 4007
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    .locals 2

    .prologue
    .line 3947
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

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
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1

    .prologue
    .line 3956
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3952
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;
    .locals 1

    .prologue
    .line 3994
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 3991
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;
    .locals 1

    .prologue
    .line 3934
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3960
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;

    .prologue
    .line 3997
    if-nez p1, :cond_0

    .line 3998
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4000
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->access$12802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;Z)Z

    .line 4001
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;->access$12902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse;Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ConfirmationEmailResponse$Error;

    .line 4002
    return-object p0
.end method
