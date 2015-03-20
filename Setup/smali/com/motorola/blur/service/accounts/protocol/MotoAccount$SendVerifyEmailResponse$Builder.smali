.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2721
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$9100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2716
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9200()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .locals 1

    .prologue
    .line 2716
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2767
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2768
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2771
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .locals 3

    .prologue
    .line 2724
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;-><init>()V

    .line 2725
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    .line 2726
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1

    .prologue
    .line 2759
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2760
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2762
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 3

    .prologue
    .line 2775
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    if-nez v1, :cond_0

    .line 2776
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2779
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    .line 2780
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    .line 2781
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .locals 2

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    if-nez v0, :cond_0

    .line 2735
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2738
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    .line 2739
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .locals 2

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Z)Z

    .line 2802
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 2803
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .locals 2

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Z)Z

    .line 2839
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2840
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .locals 2

    .prologue
    .line 2743
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

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
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1

    .prologue
    .line 2752
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2748
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 2790
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 2811
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 2808
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;
    .locals 1

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2756
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2829
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2834
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Z)Z

    .line 2835
    return-object p0

    .line 2832
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 2793
    if-nez p1, :cond_0

    .line 2794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2796
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Z)Z

    .line 2797
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 2798
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Z)Z

    .line 2823
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2824
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 2814
    if-nez p1, :cond_0

    .line 2815
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2817
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Z)Z

    .line 2818
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;->access$9702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SendVerifyEmailResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 2819
    return-object p0
.end method
