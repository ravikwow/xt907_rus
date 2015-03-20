.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1014
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1060
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1064
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 3

    .prologue
    .line 1017
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;-><init>()V

    .line 1018
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    .line 1019
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1055
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 3

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    if-nez v1, :cond_0

    .line 1069
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    .line 1073
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    .line 1074
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    if-nez v0, :cond_0

    .line 1028
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    .line 1032
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 2

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$2902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z

    .line 1111
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 1112
    return-object p0
.end method

.method public clearEmail()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 2

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z

    .line 1169
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->getEmail()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->email_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1170
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z

    .line 1148
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1149
    return-object p0
.end method

.method public clearUserId()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasUserId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z

    .line 1190
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->userId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1191
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 2

    .prologue
    .line 1036
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

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
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1

    .prologue
    .line 1045
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1041
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasEmail()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasUserId()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1101
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 1106
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$2902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z

    .line 1107
    return-object p0

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1138
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1143
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z

    .line 1144
    return-object p0

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$2902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z

    .line 1095
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 1096
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 1086
    if-nez p1, :cond_0

    .line 1087
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$2902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z

    .line 1090
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 1091
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1160
    if-nez p1, :cond_0

    .line 1161
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasEmail:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z

    .line 1164
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->email_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1165
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z

    .line 1132
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1133
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 1123
    if-nez p1, :cond_0

    .line 1124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z

    .line 1127
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1128
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1181
    if-nez p1, :cond_0

    .line 1182
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->hasUserId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Z)Z

    .line 1185
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->userId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;->access$3602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$GetVerifiedStatusRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1186
    return-object p0
.end method
