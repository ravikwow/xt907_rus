.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 1

    .prologue
    .line 700
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 755
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 3

    .prologue
    .line 708
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;-><init>()V

    .line 709
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    .line 710
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 3

    .prologue
    .line 759
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    if-nez v1, :cond_0

    .line 760
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    .line 764
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    .line 765
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    if-nez v0, :cond_0

    .line 719
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    .line 723
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$1802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Z)Z

    .line 786
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$1902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 787
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Z)Z

    .line 860
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 861
    return-object p0
.end method

.method public clearSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Z)Z

    .line 823
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 824
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 2

    .prologue
    .line 727
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

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
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1

    .prologue
    .line 736
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 732
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->getError()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasSession()Z
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasSession()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 848
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 855
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Z)Z

    .line 856
    return-object p0

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 818
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Z)Z

    .line 819
    return-object p0

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    goto :goto_0
.end method

.method public setError(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .prologue
    .line 777
    if-nez p1, :cond_0

    .line 778
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$1802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Z)Z

    .line 781
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->error_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$1902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 782
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Z)Z

    .line 844
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 845
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 835
    if-nez p1, :cond_0

    .line 836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Z)Z

    .line 839
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 840
    return-object p0
.end method

.method public setSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Z)Z

    .line 807
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 808
    return-object p0
.end method

.method public setSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 798
    if-nez p1, :cond_0

    .line 799
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Z)Z

    .line 802
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;->access$2102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$NewAccountResponse;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 803
    return-object p0
.end method
