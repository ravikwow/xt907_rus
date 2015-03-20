.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2823
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$9300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2818
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9400()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 2818
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2869
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2870
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2873
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .locals 3

    .prologue
    .line 2826
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;-><init>()V

    .line 2827
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    .line 2828
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1

    .prologue
    .line 2861
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2862
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2864
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 3

    .prologue
    .line 2877
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    if-nez v1, :cond_0

    .line 2878
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2881
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    .line 2882
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    .line 2883
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 2836
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    if-nez v0, :cond_0

    .line 2837
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2840
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    .line 2841
    return-object p0
.end method

.method public clearCurrentEmail()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasCurrentEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->access$9602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Z)Z

    .line 2904
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->getCurrentEmail()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->currentEmail_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->access$9702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2905
    return-object p0
.end method

.method public clearNewEmail()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 2924
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasNewEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->access$9802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Z)Z

    .line 2925
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->getNewEmail()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newEmail_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->access$9902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2926
    return-object p0
.end method

.method public clearNewPassword()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 2945
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasNewPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->access$10002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Z)Z

    .line 2946
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->getNewPassword()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newPassword_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->access$10102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2947
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 2845
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

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
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->getCurrentEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1

    .prologue
    .line 2854
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2850
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getNewEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2913
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->getNewEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2934
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->getNewPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCurrentEmail()Z
    .locals 1

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasCurrentEmail()Z

    move-result v0

    return v0
.end method

.method public hasNewEmail()Z
    .locals 1

    .prologue
    .line 2910
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasNewEmail()Z

    move-result v0

    return v0
.end method

.method public hasNewPassword()Z
    .locals 1

    .prologue
    .line 2931
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasNewPassword()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;
    .locals 1

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setCurrentEmail(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2895
    if-nez p1, :cond_0

    .line 2896
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2898
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasCurrentEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->access$9602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Z)Z

    .line 2899
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->currentEmail_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->access$9702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2900
    return-object p0
.end method

.method public setNewEmail(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2916
    if-nez p1, :cond_0

    .line 2917
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2919
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasNewEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->access$9802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Z)Z

    .line 2920
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newEmail_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->access$9902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2921
    return-object p0
.end method

.method public setNewPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2937
    if-nez p1, :cond_0

    .line 2938
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2940
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->hasNewPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->access$10002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Z)Z

    .line 2941
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->newPassword_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;->access$10102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 2942
    return-object p0
.end method
