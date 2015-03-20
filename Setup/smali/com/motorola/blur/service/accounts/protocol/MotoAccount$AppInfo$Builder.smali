.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13965
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$49400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13960
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$49500()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;
    .locals 1

    .prologue
    .line 13960
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14011
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14012
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 14015
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;
    .locals 3

    .prologue
    .line 13968
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;-><init>()V

    .line 13969
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 13970
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 14003
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14004
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 14006
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 3

    .prologue
    .line 14019
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    if-nez v1, :cond_0

    .line 14020
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14023
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 14024
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 14025
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;
    .locals 2

    .prologue
    .line 13978
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    if-nez v0, :cond_0

    .line 13979
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13982
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 13983
    return-object p0
.end method

.method public clearAppData()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;
    .locals 2

    .prologue
    .line 14066
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->hasAppData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->access$49902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;Z)Z

    .line 14067
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getAppData()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->appData_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->access$50002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14068
    return-object p0
.end method

.method public clearAppId()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;
    .locals 2

    .prologue
    .line 14045
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->access$49702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;Z)Z

    .line 14046
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->access$49802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14047
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;
    .locals 2

    .prologue
    .line 13987
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

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
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14055
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getAppData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14034
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 13996
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13992
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasAppData()Z
    .locals 1

    .prologue
    .line 14052
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->hasAppData()Z

    move-result v0

    return v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 14031
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->hasAppId()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 13960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 13974
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 14000
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setAppData(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14058
    if-nez p1, :cond_0

    .line 14059
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14061
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->hasAppData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->access$49902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;Z)Z

    .line 14062
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->appData_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->access$50002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14063
    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14037
    if-nez p1, :cond_0

    .line 14038
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14040
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->access$49702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;Z)Z

    .line 14041
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->access$49802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 14042
    return-object p0
.end method
