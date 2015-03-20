.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14905
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$53500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14900
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$53600()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;
    .locals 1

    .prologue
    .line 14900
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14951
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14952
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 14955
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;
    .locals 3

    .prologue
    .line 14908
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;-><init>()V

    .line 14909
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 14910
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 14943
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14944
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 14946
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 3

    .prologue
    .line 14959
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    if-nez v1, :cond_0

    .line 14960
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14963
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 14964
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 14965
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;
    .locals 2

    .prologue
    .line 14918
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    if-nez v0, :cond_0

    .line 14919
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14922
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 14923
    return-object p0
.end method

.method public clearMessageId()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;
    .locals 2

    .prologue
    .line 14985
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->access$53802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;Z)Z

    .line 14986
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getMessageId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->messageId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->access$53902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14987
    return-object p0
.end method

.method public clearTimeStamp()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;
    .locals 3

    .prologue
    .line 15003
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->hasTimeStamp:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->access$54002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;Z)Z

    .line 15004
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->timeStamp_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->access$54102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;J)J

    .line 15005
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15021
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->access$54202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;Z)Z

    .line 15022
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->access$54302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;I)I

    .line 15023
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;
    .locals 2

    .prologue
    .line 14927
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

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
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 14936
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14932
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14974
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getMessageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 14995
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 15013
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasMessageId()Z
    .locals 1

    .prologue
    .line 14971
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->hasMessageId()Z

    move-result v0

    return v0
.end method

.method public hasTimeStamp()Z
    .locals 1

    .prologue
    .line 14992
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->hasTimeStamp()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 15010
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 14900
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 14914
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 14940
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setMessageId(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14977
    if-nez p1, :cond_0

    .line 14978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14980
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->access$53802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;Z)Z

    .line 14981
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->messageId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->access$53902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14982
    return-object p0
.end method

.method public setTimeStamp(J)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 14998
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->hasTimeStamp:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->access$54002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;Z)Z

    .line 14999
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->timeStamp_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->access$54102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;J)J

    .line 15000
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 15016
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->access$54202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;Z)Z

    .line 15017
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->access$54302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;I)I

    .line 15018
    return-object p0
.end method
