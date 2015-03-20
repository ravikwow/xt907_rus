.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9850
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$34800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9845
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$34900()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .locals 1

    .prologue
    .line 9845
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9896
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9897
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 9900
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .locals 3

    .prologue
    .line 9853
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;-><init>()V

    .line 9854
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    .line 9855
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1

    .prologue
    .line 9888
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9889
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 9891
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 3

    .prologue
    .line 9904
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    if-nez v1, :cond_0

    .line 9905
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9908
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    .line 9909
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    .line 9910
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .locals 2

    .prologue
    .line 9863
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    if-nez v0, :cond_0

    .line 9864
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9867
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    .line 9868
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .locals 2

    .prologue
    .line 9930
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Z)Z

    .line 9931
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 9932
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .locals 2

    .prologue
    .line 9967
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Z)Z

    .line 9968
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9969
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .locals 2

    .prologue
    .line 9872
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

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
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1

    .prologue
    .line 9881
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9877
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 9919
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 9940
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 9916
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 9937
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 9845
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;
    .locals 1

    .prologue
    .line 9859
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 9885
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 9956
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9958
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9963
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Z)Z

    .line 9964
    return-object p0

    .line 9961
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 9922
    if-nez p1, :cond_0

    .line 9923
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9925
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Z)Z

    .line 9926
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 9927
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 9951
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Z)Z

    .line 9952
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9953
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 9943
    if-nez p1, :cond_0

    .line 9944
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9946
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Z)Z

    .line 9947
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;->access$35402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ConfirmationEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 9948
    return-object p0
.end method
