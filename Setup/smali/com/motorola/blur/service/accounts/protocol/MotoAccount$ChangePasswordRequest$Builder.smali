.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7053
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$24800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7048
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24900()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 1

    .prologue
    .line 7048
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7099
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7100
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 7103
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 3

    .prologue
    .line 7056
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;-><init>()V

    .line 7057
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    .line 7058
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1

    .prologue
    .line 7091
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7092
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7094
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 3

    .prologue
    .line 7107
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    if-nez v1, :cond_0

    .line 7108
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7111
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    .line 7112
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    .line 7113
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2

    .prologue
    .line 7066
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    if-nez v0, :cond_0

    .line 7067
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7070
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    .line 7071
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2

    .prologue
    .line 7207
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z

    .line 7208
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 7209
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2

    .prologue
    .line 7244
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z

    .line 7245
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7246
    return-object p0
.end method

.method public clearNewPassword()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2

    .prologue
    .line 7170
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasNewPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z

    .line 7171
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->getNewPassword()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newPassword_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 7172
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2

    .prologue
    .line 7149
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z

    .line 7150
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 7151
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2

    .prologue
    .line 7075
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

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
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 7180
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1

    .prologue
    .line 7084
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7080
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 7217
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNewPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7159
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->getNewPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 7122
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 7177
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 7214
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasNewPassword()Z
    .locals 1

    .prologue
    .line 7156
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasNewPassword()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 7119
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 7048
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;
    .locals 1

    .prologue
    .line 7062
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7088
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 7196
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7198
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 7203
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z

    .line 7204
    return-object p0

    .line 7201
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 7233
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7235
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7240
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z

    .line 7241
    return-object p0

    .line 7238
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 7138
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7140
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 7145
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z

    .line 7146
    return-object p0

    .line 7143
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 7191
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z

    .line 7192
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 7193
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 7183
    if-nez p1, :cond_0

    .line 7184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7186
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z

    .line 7187
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 7188
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 7228
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z

    .line 7229
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7230
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 7220
    if-nez p1, :cond_0

    .line 7221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7223
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z

    .line 7224
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 7225
    return-object p0
.end method

.method public setNewPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7162
    if-nez p1, :cond_0

    .line 7163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7165
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasNewPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z

    .line 7166
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->newPassword_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 7167
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 7133
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z

    .line 7134
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 7135
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 7125
    if-nez p1, :cond_0

    .line 7126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7128
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Z)Z

    .line 7129
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;->access$25202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$ChangePasswordRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 7130
    return-object p0
.end method
